part of state;

enum SignalingState {
  ConnectionOpen,
  ConnectionClosed,
  ConnectionError,
}

enum CallState {
  CallStateNew,
  CallStateRinging,
  CallStateInvite,
  CallStateConnected,
  CallStateBye,
}

/*
 * callbacks for Signaling API.
 */
typedef void SignalingStateCallback(SignalingState state);
typedef void CallStateCallback(Session session, CallState state);
typedef void StreamStateCallback(Session session, MediaStream stream);
typedef void OtherEventCallback(dynamic event);
typedef void DataChannelMessageCallback(
    Session session, RTCDataChannel dc, RTCDataChannelMessage data);
typedef void DataChannelCallback(Session session, RTCDataChannel dc);

class Session {
  Session({this.sid, this.pid});
  String pid;
  String sid;
  RTCPeerConnection pc;
  RTCDataChannel dc;
  List<RTCIceCandidate> remoteCandidates = [];
}

//enum Signaling_Status { none, loading, connectionerror }

class Signaling with ChangeNotifier {
  var _turnCredential;
  String _selfId;
  String _roomId;
  Map<String, Session> _sessions = {};
  MediaStream _localStream;
  List<MediaStream> _remoteStreams = <MediaStream>[];

  SignalingStateCallback onSignalingStateChange;
  CallStateCallback onCallStateChange;
  StreamStateCallback onLocalStream;
  StreamStateCallback onAddRemoteStream;
  StreamStateCallback onRemoveRemoteStream;
  OtherEventCallback onPeersUpdate;
  DataChannelMessageCallback onDataChannelMessage;
  DataChannelCallback onDataChannel;

  Map<String, dynamic> _iceServers = {
    'iceServers': [
      {'url': 'stun:stun.l.google.com:19302'},
      /*
       * turn server configuration example.
      {
        'url': 'turn:123.45.67.89:3478',
        'username': 'change_to_real_user',
        'credential': 'change_to_real_secret'
      },
      */
    ]
  };

  final Map<String, dynamic> _config = {
    'mandatory': {},
    'optional': [
      {'DtlsSrtpKeyAgreement': true},
    ]
  };

  final Map<String, dynamic> _dcConstraints = {
    'mandatory': {
      'OfferToReceiveAudio': false,
      'OfferToReceiveVideo': false,
    },
    'optional': [],
  };

  void onMessage(WebRTCEvent event) async {
    switch (event.eventType) {
      case WebRTCEvent_EventTypes.ePeers:
        {
          var peers = event.peersList.peers;
          if (onPeersUpdate != null) {
            Map<String, dynamic> event = Map<String, dynamic>();
            event['self'] = peers.first;
            event['peers'] = peers.skip(1);
            onPeersUpdate?.call(event);
          }
        }
        break;
      case WebRTCEvent_EventTypes.eOffer:
        {
          var peerId = event.from;
          var media = event.offer.media;
          var sessionId = event.sessionId;
          var session = _sessions[sessionId];
          var newSession = await _createSession(
              session: session,
              peerId: peerId,
              sessionId: sessionId,
              media: media,
              screenSharing: false);
          _sessions[sessionId] = newSession;
          await newSession.pc.setRemoteDescription(RTCSessionDescription(
              event.offer.description.sdp, event.offer.description.type));
          await _createAnswer(newSession, media);
          if (newSession.remoteCandidates.length > 0) {
            newSession.remoteCandidates.forEach((candidate) async {
              await newSession.pc.addCandidate(candidate);
            });
            newSession.remoteCandidates.clear();
          }
          onCallStateChange?.call(newSession, CallState.CallStateNew);
        }
        break;
      case WebRTCEvent_EventTypes.eAnswer:
        {
          var sessionId = event.sessionId;
          var session = _sessions[sessionId];
          session?.pc?.setRemoteDescription(RTCSessionDescription(
              event.answer.description.sdp, event.answer.description.type));
        }
        break;
      case WebRTCEvent_EventTypes.eCandidate:
        {
          var peerId = event.from;
          var sessionId = event.sessionId;
          var session = _sessions[sessionId];
          RTCIceCandidate candidate = RTCIceCandidate(event.candidate.candidate,
              event.candidate.sdpMid, event.candidate.sdpMLineIndex);

          if (session != null) {
            if (session.pc != null) {
              await session.pc.addCandidate(candidate);
            } else {
              session.remoteCandidates.add(candidate);
            }
          } else {
            _sessions[sessionId] = Session(pid: peerId, sid: sessionId)
              ..remoteCandidates.add(candidate);
          }
        }
        break;
      case WebRTCEvent_EventTypes.eLeave:
        {
          var peerId = event.from;
          _closeSessionByPeerId(peerId);
        }
        break;
      case WebRTCEvent_EventTypes.eBye:
        {
          var sessionId = event.sessionId;
          print('bye: ' + sessionId);
          var session = _sessions.remove(sessionId);
          onCallStateChange?.call(session, CallState.CallStateBye);
          _closeSession(session);
        }
        break;
      case WebRTCEvent_EventTypes.eKeepAlive:
        {
          print('keepalive response!');
        }
        break;
      default:
        break;
    }
  }

  Future<void> _cleanSessions() async {
    if (_localStream != null) {
      _localStream.getTracks().forEach((element) async {
        await element.dispose();
      });
      await _localStream.dispose();
      _localStream = null;
    }
    _sessions.forEach((key, sess) async {
      await sess?.pc?.close();
      await sess?.dc?.close();
    });
    _sessions.clear();
  }

  close() async {
    await _cleanSessions();
    subscription.cancel();
  }

  void switchCamera() {
    if (_localStream != null) {
      _localStream.getVideoTracks()[0].switchCamera();
    }
  }

  void muteMic() {
    if (_localStream != null) {
      bool enabled = _localStream.getAudioTracks()[0].enabled;
      _localStream.getAudioTracks()[0].enabled = !enabled;
    }
  }

  void invite(String peerId, String media, bool useScreen) async {
    var _sessionId = _selfId + "_" + peerId;
    Session session = await _createSession(
        peerId: peerId,
        sessionId: _sessionId,
        media: media,
        screenSharing: useScreen);
    _sessions[_sessionId] = session;
    if (media == 'data') {
      _createDataChannel(session);
    }
    _createOffer(session, media);
    onCallStateChange?.call(session, CallState.CallStateNew);
  }

  void bye(String sessionId) {
    service.sendEvent(WebRTCEvent()
      ..eventType = WebRTCEvent_EventTypes.eBye
      ..sessionId = sessionId
      ..from = _selfId);
    _closeSession(_sessions[sessionId]);
  }

  var _disposed = false;
  var retryTime = 0;
  Timer _retryTimer;
  UserList_Status Status = UserList_Status.none;
  var users = <UserInfo>[];
  StreamSubscription subscription;

  final WebRTCSignalClient service;
  Signaling(this.service);

  Future subscribe() async {
    Status = states.UserList_Status.loading;
    notifyListeners();

    var responseStream =
        service.subscribeToRoom(WebRTCSubscribeReqest()..sessionId = _roomId);

    subscription = responseStream.listen((snapShot) {
      onMessage(snapShot);
    });
    subscription.onError((error) {
      if (!_disposed) {
        //Status = UserList_Status.connectionerror;
        notifyListeners();
      }
    });

    print("subsribed to userlist");
  }

  void starRetry() {
    retryTime = 10;
    _retryTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (retryTime-- <= 0) {
        subscribe();
        timer = null;
      } else {
        notifyListeners();
      }
    });
  }

  /*Future<void> connect() async {

    if (_turnCredential == null) {
      try {
        _turnCredential = await getTurnCredential(_host, _port);
        /*{
            "username": "1584195784:mbzrxpgjys",
            "password": "isyl6FF6nqMTB9/ig5MrMRUXqZg",
            "ttl": 86400,
            "uris": ["turn:127.0.0.1:19302?transport=udp"]
          }
        */
        _iceServers = {
          'iceServers': [
            {
              'urls': _turnCredential['uris'][0],
              'username': _turnCredential['username'],
              'credential': _turnCredential['password']
            },
          ]
        };
      } catch (e) {}
    }*/

  Future<MediaStream> createStream(String media, bool userScreen) async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'mandatory': {
          'minWidth':
              '640', // Provide your own width, height and frame rate here
          'minHeight': '480',
          'minFrameRate': '30',
        },
        'facingMode': 'user',
        'optional': [],
      }
    };

    MediaStream stream = userScreen
        ? await navigator.mediaDevices.getDisplayMedia(mediaConstraints)
        : await navigator.mediaDevices.getUserMedia(mediaConstraints);
    onLocalStream?.call(null, stream);
    return stream;
  }

  Future<Session> _createSession(
      {Session session,
      String peerId,
      String sessionId,
      String media,
      bool screenSharing}) async {
    var newSession = session ?? Session(sid: sessionId, pid: peerId);
    if (media != 'data')
      _localStream = await createStream(media, screenSharing);
    print(_iceServers);
    RTCPeerConnection pc = await createPeerConnection({
      ..._iceServers,
      ...{'sdpSemantics': 'unified-plan'}
    }, _config);
    if (media != 'data') {
      _localStream
          .getTracks()
          .forEach((track) async => await pc.addTrack(track, _localStream));

      // Unified-Plan: Simuclast
      /*
      await pc.addTransceiver(
        track: _localStream.getAudioTracks()[0],
        init: RTCRtpTransceiverInit(
            direction: TransceiverDirection.SendOnly, streams: [_localStream]),
      );

      await pc.addTransceiver(
        track: _localStream.getVideoTracks()[0],
        init: RTCRtpTransceiverInit(
            direction: TransceiverDirection.SendOnly,
            streams: [
              _localStream
            ],
            sendEncodings: [
              RTCRtpEncoding(rid: 'f', active: true),
              RTCRtpEncoding(
                rid: 'h',
                active: true,
                scaleResolutionDownBy: 2.0,
                maxBitrate: 150000,
              ),
              RTCRtpEncoding(
                rid: 'q',
                active: true,
                scaleResolutionDownBy: 4.0,
                maxBitrate: 100000,
              ),
            ]),
      );*/
      /*
        var sender = pc.getSenders().find(s => s.track.kind == "video");
        var parameters = sender.getParameters();
        if(!parameters)
          parameters = {};
        parameters.encodings = [
          { rid: "h", active: true, maxBitrate: 900000 },
          { rid: "m", active: true, maxBitrate: 300000, scaleResolutionDownBy: 2 },
          { rid: "l", active: true, maxBitrate: 100000, scaleResolutionDownBy: 4 }
        ];
        sender.setParameters(parameters);
      */
    }
    pc.onIceCandidate = (candidate) {
      if (candidate == null) {
        print('onIceCandidate: complete!');
        return;
      }
      var candidateData = WebRTCEvent_CandidateData()
        ..sdpMLineIndex = candidate.sdpMlineIndex
        ..sdpMid = candidate.sdpMid
        ..candidate = candidate.candidate;
      service.sendEvent(WebRTCEvent()
        ..eventType = WebRTCEvent_EventTypes.eCandidate
        ..to = peerId
        ..from = _selfId
        ..candidate = candidateData
        ..sessionId = sessionId);
    };

    pc.onIceConnectionState = (state) {};

    //pc.onAddStream = (stream) {
    //  onAddRemoteStream?.call(stream);
    //  _remoteStreams.add(stream);
    //};

    // Unified-Plan
    pc.onTrack = (event) {
      if (event.track.kind == 'video') {
        onAddRemoteStream?.call(newSession, event.streams[0]);
      }
    };

    pc.onRemoveStream = (stream) {
      onRemoveRemoteStream?.call(newSession, stream);
      _remoteStreams.removeWhere((it) {
        return (it.id == stream.id);
      });
    };

    pc.onDataChannel = (channel) {
      _addDataChannel(newSession, channel);
    };

    newSession.pc = pc;
    return newSession;
  }

  void _addDataChannel(Session session, RTCDataChannel channel) {
    channel.onDataChannelState = (e) {};
    channel.onMessage = (RTCDataChannelMessage data) {
      onDataChannelMessage?.call(session, channel, data);
    };
    session.dc = channel;
    onDataChannel?.call(session, channel);
  }

  Future<void> _createDataChannel(Session session,
      {label: 'fileTransfer'}) async {
    RTCDataChannelInit dataChannelDict = RTCDataChannelInit()
      ..maxRetransmits = 30;
    RTCDataChannel channel =
        await session.pc.createDataChannel(label, dataChannelDict);
    _addDataChannel(session, channel);
  }

  Future<void> _createOffer(Session session, String media) async {
    try {
      RTCSessionDescription s =
          await session.pc.createOffer(media == 'data' ? _dcConstraints : {});
      await session.pc.setLocalDescription(s);
      var descriptionData = WebRTCEvent_DescriptionData()
        ..sdp = s.sdp
        ..type = s.type;
      service.sendEvent(WebRTCEvent()
        ..eventType = WebRTCEvent_EventTypes.eOffer
        ..to = session.pid
        ..from = _selfId
        ..offer.description = descriptionData
        ..offer.media = media
        ..sessionId = session.sid);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _createAnswer(Session session, String media) async {
    try {
      RTCSessionDescription s =
          await session.pc.createAnswer(media == 'data' ? _dcConstraints : {});
      await session.pc.setLocalDescription(s);
      var descriptionData = WebRTCEvent_DescriptionData()
        ..sdp = s.sdp
        ..type = s.type;
      service.sendEvent(WebRTCEvent()
        ..eventType = WebRTCEvent_EventTypes.eAnswer
        ..to = session.pid
        ..from = _selfId
        ..answer.description = descriptionData
        ..sessionId = session.sid);
    } catch (e) {
      print(e.toString());
    }
  }

  void _closeSessionByPeerId(String peerId) {
    var session;
    _sessions.removeWhere((String key, Session sess) {
      var ids = key.split('-');
      session = sess;
      return peerId == ids[0] || peerId == ids[1];
    });
    if (session != null) {
      _closeSession(session);
      onCallStateChange?.call(session, CallState.CallStateBye);
    }
  }

  Future<void> _closeSession(Session session) async {
    _localStream?.getTracks()?.forEach((element) async {
      await element.dispose();
    });
    await _localStream?.dispose();
    _localStream = null;

    await session?.pc?.close();
    await session?.dc?.close();
  }

  @override
  void dispose() {
    subscription?.cancel();
    _retryTimer?.cancel();
    _disposed = true;
    super.dispose();
  }
}

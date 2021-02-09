import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'state/lib.dart' as states;
import 'package:async/async.dart';
import 'package:provider/provider.dart';

import 'state/lib.dart';

class VideoCallWidget extends StatefulWidget {
  static String tag = 'call_sample';

  final String host;

  VideoCallWidget({Key key, @required this.host}) : super(key: key);

  @override
  _VideoCallWidget createState() => _VideoCallWidget();
}

class _VideoCallWidget extends State<VideoCallWidget> {
  states.Signaling model;
  CancelableOperation initJob;

  @override
  void initState() {
    model = states.Signaling(context.read());

    initJob = CancelableOperation.fromFuture(init());
  }

  Future init() async {
    super.initState();
    initRenderers();
    await model.subscribe();
  }

  initRenderers() async {
    await _localRenderer.initialize();
    await _remoteRenderer.initialize();
  }

  List<dynamic> _peers;
  var _selfId;
  RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();
  bool _inCalling = false;
  Session _session;

  // ignore: unused_element
  _VideoCallWidget({Key key});

  @override
  deactivate() {
    super.deactivate();
    _localRenderer.dispose();
    _remoteRenderer.dispose();
    try {
      model.dispose();
    } catch (ex) {
      print("warning:$ex");
    }
    initJob.cancel();
  }

  //void _subscribe() async {
  /*if (_signaling == null) {
      _signaling.onSignalingStateChange = (SignalingState state) {
        switch (state) {
          case SignalingState.ConnectionClosed:
          case SignalingState.ConnectionError:
          case SignalingState.ConnectionOpen:
            break;
        }
      };*/

  /* _signaling.onCallStateChange = (Session session, CallState state) {
        switch (state) {
          case CallState.CallStateNew:
            setState(() {
              _session = session;
              _inCalling = true;
            });
            break;
          case CallState.CallStateBye:
            setState(() {
              _localRenderer.srcObject = null;
              _remoteRenderer.srcObject = null;
              _inCalling = false;
              _session = null;
            });
            break;
          case CallState.CallStateInvite:
          case CallState.CallStateConnected:
          case CallState.CallStateRinging:
        }
      };*/

  /* _signaling.onPeersUpdate = ((event) {
        setState(() {
          _selfId = event['self'];
          _peers = event['peers'];
        });
      });

      _signaling.onLocalStream = ((_, stream) {
        _localRenderer.srcObject = stream;
      });

      _signaling.onAddRemoteStream = ((_, stream) {
        _remoteRenderer.srcObject = stream;
      });

      _signaling.onRemoveRemoteStream = ((_, stream) {
        _remoteRenderer.srcObject = null;
      });
    }
  }*/

  _invitePeer(BuildContext context, String peerId, bool useScreen) async {
    model.invite(peerId, 'video', useScreen);
  }

  _hangUp() {
    model.bye(_session.sid);
  }

  _switchCamera() {
    model.switchCamera();
  }

  _muteMic() {
    model.muteMic();
  }

  _buildRow(context, peer) {
    var self = (peer['id'] == _selfId);
    return ListBody(children: <Widget>[
      ListTile(
        title: Text(self
            ? peer['name'] + '[Your self]'
            : peer['name'] + '[' + peer['user_agent'] + ']'),
        onTap: null,
        trailing: SizedBox(
            width: 100.0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.videocam),
                    onPressed: () => _invitePeer(context, peer['id'], false),
                    tooltip: 'Video calling',
                  ),
                  IconButton(
                    icon: const Icon(Icons.screen_share),
                    onPressed: () => _invitePeer(context, peer['id'], true),
                    tooltip: 'Screen sharing',
                  )
                ])),
        subtitle: Text('id: ' + peer['id']),
      ),
      Divider()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P2P Call Sample'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: null,
            tooltip: 'setup',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _inCalling
          ? SizedBox(
              width: 200.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FloatingActionButton(
                      child: const Icon(Icons.switch_camera),
                      onPressed: _switchCamera,
                    ),
                    FloatingActionButton(
                      onPressed: _hangUp,
                      tooltip: 'Hangup',
                      child: Icon(Icons.call_end),
                      backgroundColor: Colors.pink,
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.mic_off),
                      onPressed: _muteMic,
                    )
                  ]))
          : null,
      body: _inCalling
          ? OrientationBuilder(builder: (context, orientation) {
              return Container(
                child: Stack(children: <Widget>[
                  Positioned(
                      left: 0.0,
                      right: 0.0,
                      top: 0.0,
                      bottom: 0.0,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: RTCVideoView(_remoteRenderer),
                        decoration: BoxDecoration(color: Colors.black54),
                      )),
                  Positioned(
                    left: 20.0,
                    top: 20.0,
                    child: Container(
                      width: orientation == Orientation.portrait ? 90.0 : 120.0,
                      height:
                          orientation == Orientation.portrait ? 120.0 : 90.0,
                      child: RTCVideoView(_localRenderer, mirror: true),
                      decoration: BoxDecoration(color: Colors.black54),
                    ),
                  ),
                ]),
              );
            })
          : ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0.0),
              itemCount: (_peers != null ? _peers.length : 0),
              itemBuilder: (context, i) {
                return _buildRow(context, _peers[i]);
              }),
    );
  }
}

///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const EmptyRequest$json = const {
  '1': 'EmptyRequest',
};

const EmptyResponse$json = const {
  '1': 'EmptyResponse',
};

const AuthenticationInfo$json = const {
  '1': 'AuthenticationInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const TokenInfo$json = const {
  '1': 'TokenInfo',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const CallStatus$json = const {
  '1': 'CallStatus',
  '2': const [
    const {'1': 'context', '3': 1, '4': 1, '5': 9, '10': 'context'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.gizem.CallStatus.Status', '10': 'state'},
    const {'1': 'WebRTCSessionId', '3': 3, '4': 1, '5': 9, '10': 'WebRTCSessionId'},
  ],
  '4': const [CallStatus_Status$json],
};

const CallStatus_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'None', '2': 0},
    const {'1': 'Ringing', '2': 1},
    const {'1': 'Answered', '2': 2},
    const {'1': 'Missed', '2': 3},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'UserId', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
  ],
};

const OnlineUser$json = const {
  '1': 'OnlineUser',
  '2': const [
    const {'1': 'StreamId', '3': 1, '4': 1, '5': 9, '10': 'StreamId'},
    const {'1': 'User', '3': 2, '4': 1, '5': 11, '6': '.gizem.User', '10': 'User'},
  ],
};

const WebRTCEvent$json = const {
  '1': 'WebRTCEvent',
  '2': const [
    const {'1': 'EventType', '3': 1, '4': 1, '5': 14, '6': '.gizem.WebRTCEvent.EventTypes', '10': 'EventType'},
    const {'1': 'SessionId', '3': 2, '4': 1, '5': 9, '10': 'SessionId'},
    const {'1': 'To', '3': 3, '4': 1, '5': 9, '10': 'To'},
    const {'1': 'From', '3': 4, '4': 1, '5': 9, '10': 'From'},
    const {'1': 'Offer', '3': 5, '4': 1, '5': 11, '6': '.gizem.WebRTCEvent.OfferData', '9': 0, '10': 'Offer'},
    const {'1': 'Answer', '3': 6, '4': 1, '5': 11, '6': '.gizem.WebRTCEvent.AnswerData', '9': 0, '10': 'Answer'},
    const {'1': 'Candidate', '3': 7, '4': 1, '5': 11, '6': '.gizem.WebRTCEvent.CandidateData', '9': 0, '10': 'Candidate'},
    const {'1': 'PeersList', '3': 8, '4': 1, '5': 11, '6': '.gizem.WebRTCEvent.PeersData', '9': 0, '10': 'PeersList'},
  ],
  '3': const [WebRTCEvent_DescriptionData$json, WebRTCEvent_OfferData$json, WebRTCEvent_AnswerData$json, WebRTCEvent_CandidateData$json, WebRTCEvent_PeersData$json],
  '4': const [WebRTCEvent_EventTypes$json],
  '8': const [
    const {'1': 'data'},
  ],
};

const WebRTCEvent_DescriptionData$json = const {
  '1': 'DescriptionData',
  '2': const [
    const {'1': 'sdp', '3': 1, '4': 1, '5': 9, '10': 'sdp'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

const WebRTCEvent_OfferData$json = const {
  '1': 'OfferData',
  '2': const [
    const {'1': 'description', '3': 3, '4': 1, '5': 11, '6': '.gizem.WebRTCEvent.DescriptionData', '10': 'description'},
    const {'1': 'Media', '3': 5, '4': 1, '5': 9, '10': 'Media'},
  ],
};

const WebRTCEvent_AnswerData$json = const {
  '1': 'AnswerData',
  '2': const [
    const {'1': 'description', '3': 3, '4': 1, '5': 11, '6': '.gizem.WebRTCEvent.DescriptionData', '10': 'description'},
  ],
};

const WebRTCEvent_CandidateData$json = const {
  '1': 'CandidateData',
  '2': const [
    const {'1': 'SdpMLineIndex', '3': 1, '4': 1, '5': 5, '10': 'SdpMLineIndex'},
    const {'1': 'SdpMid', '3': 2, '4': 1, '5': 9, '10': 'SdpMid'},
    const {'1': 'Candidate', '3': 3, '4': 1, '5': 9, '10': 'Candidate'},
  ],
};

const WebRTCEvent_PeersData$json = const {
  '1': 'PeersData',
  '2': const [
    const {'1': 'Peers', '3': 8, '4': 3, '5': 9, '10': 'Peers'},
  ],
};

const WebRTCEvent_EventTypes$json = const {
  '1': 'EventTypes',
  '2': const [
    const {'1': 'eNone', '2': 0},
    const {'1': 'ePeers', '2': 1},
    const {'1': 'eOffer', '2': 2},
    const {'1': 'eAnswer', '2': 3},
    const {'1': 'eCandidate', '2': 4},
    const {'1': 'eLeave', '2': 5},
    const {'1': 'eBye', '2': 6},
    const {'1': 'eKeepAlive', '2': 7},
  ],
};

const NotificationData$json = const {
  '1': 'NotificationData',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'context', '3': 2, '4': 1, '5': 9, '10': 'context'},
    const {'1': 'detail', '3': 3, '4': 1, '5': 9, '10': 'detail'},
  ],
};

const UserInfo$json = const {
  '1': 'UserInfo',
  '2': const [
    const {'1': 'userid', '3': 1, '4': 1, '5': 9, '10': 'userid'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
  ],
};

const UserListData$json = const {
  '1': 'UserListData',
  '2': const [
    const {'1': 'user', '3': 1, '4': 3, '5': 11, '6': '.gizem.UserInfo', '10': 'user'},
  ],
};

const RingRequest$json = const {
  '1': 'RingRequest',
  '2': const [
    const {'1': 'userid', '3': 2, '4': 1, '5': 9, '10': 'userid'},
  ],
};

const RingResponse$json = const {
  '1': 'RingResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 14, '6': '.gizem.RingResponse.Status', '10': 'Response'},
    const {'1': 'WebRTCSessionId', '3': 2, '4': 1, '5': 9, '10': 'WebRTCSessionId'},
  ],
  '4': const [RingResponse_Status$json],
};

const RingResponse_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'None', '2': 0},
    const {'1': 'Accepted', '2': 1},
    const {'1': 'Rejected', '2': 2},
    const {'1': 'Missed', '2': 3},
  ],
};

const WebRTCSubscribeReqest$json = const {
  '1': 'WebRTCSubscribeReqest',
  '2': const [
    const {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

const AnswerRequest$json = const {
  '1': 'AnswerRequest',
  '2': const [
    const {'1': 'context', '3': 1, '4': 1, '5': 9, '10': 'context'},
  ],
};

const AnswerResponse$json = const {
  '1': 'AnswerResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 14, '6': '.gizem.AnswerResponse.Status', '10': 'Response'},
    const {'1': 'WebRTCSessionId', '3': 2, '4': 1, '5': 9, '10': 'WebRTCSessionId'},
  ],
  '4': const [AnswerResponse_Status$json],
};

const AnswerResponse_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'None', '2': 0},
    const {'1': 'Connected', '2': 1},
    const {'1': 'Missed', '2': 2},
  ],
};


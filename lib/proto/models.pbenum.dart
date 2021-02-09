///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CallStatus_Status extends $pb.ProtobufEnum {
  static const CallStatus_Status None = CallStatus_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'None');
  static const CallStatus_Status Ringing = CallStatus_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ringing');
  static const CallStatus_Status Answered = CallStatus_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Answered');
  static const CallStatus_Status Missed = CallStatus_Status._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Missed');

  static const $core.List<CallStatus_Status> values = <CallStatus_Status> [
    None,
    Ringing,
    Answered,
    Missed,
  ];

  static final $core.Map<$core.int, CallStatus_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CallStatus_Status valueOf($core.int value) => _byValue[value];

  const CallStatus_Status._($core.int v, $core.String n) : super(v, n);
}

class WebRTCEvent_EventTypes extends $pb.ProtobufEnum {
  static const WebRTCEvent_EventTypes eNone = WebRTCEvent_EventTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eNone');
  static const WebRTCEvent_EventTypes ePeers = WebRTCEvent_EventTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ePeers');
  static const WebRTCEvent_EventTypes eOffer = WebRTCEvent_EventTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eOffer');
  static const WebRTCEvent_EventTypes eAnswer = WebRTCEvent_EventTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eAnswer');
  static const WebRTCEvent_EventTypes eCandidate = WebRTCEvent_EventTypes._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eCandidate');
  static const WebRTCEvent_EventTypes eLeave = WebRTCEvent_EventTypes._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eLeave');
  static const WebRTCEvent_EventTypes eBye = WebRTCEvent_EventTypes._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eBye');
  static const WebRTCEvent_EventTypes eKeepAlive = WebRTCEvent_EventTypes._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'eKeepAlive');

  static const $core.List<WebRTCEvent_EventTypes> values = <WebRTCEvent_EventTypes> [
    eNone,
    ePeers,
    eOffer,
    eAnswer,
    eCandidate,
    eLeave,
    eBye,
    eKeepAlive,
  ];

  static final $core.Map<$core.int, WebRTCEvent_EventTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WebRTCEvent_EventTypes valueOf($core.int value) => _byValue[value];

  const WebRTCEvent_EventTypes._($core.int v, $core.String n) : super(v, n);
}

class RingResponse_Status extends $pb.ProtobufEnum {
  static const RingResponse_Status None = RingResponse_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'None');
  static const RingResponse_Status Accepted = RingResponse_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Accepted');
  static const RingResponse_Status Rejected = RingResponse_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Rejected');
  static const RingResponse_Status Missed = RingResponse_Status._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Missed');

  static const $core.List<RingResponse_Status> values = <RingResponse_Status> [
    None,
    Accepted,
    Rejected,
    Missed,
  ];

  static final $core.Map<$core.int, RingResponse_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RingResponse_Status valueOf($core.int value) => _byValue[value];

  const RingResponse_Status._($core.int v, $core.String n) : super(v, n);
}

class AnswerResponse_Status extends $pb.ProtobufEnum {
  static const AnswerResponse_Status None = AnswerResponse_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'None');
  static const AnswerResponse_Status Connected = AnswerResponse_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Connected');
  static const AnswerResponse_Status Missed = AnswerResponse_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Missed');

  static const $core.List<AnswerResponse_Status> values = <AnswerResponse_Status> [
    None,
    Connected,
    Missed,
  ];

  static final $core.Map<$core.int, AnswerResponse_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AnswerResponse_Status valueOf($core.int value) => _byValue[value];

  const AnswerResponse_Status._($core.int v, $core.String n) : super(v, n);
}


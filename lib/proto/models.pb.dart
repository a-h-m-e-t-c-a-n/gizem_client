///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pbenum.dart';

export 'models.pbenum.dart';

class EmptyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyRequest._() : super();
  factory EmptyRequest() => create();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest _defaultInstance;
}

class EmptyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyResponse._() : super();
  factory EmptyResponse() => create();
  factory EmptyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse _defaultInstance;
}

class AuthenticationInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthenticationInfo._() : super();
  factory AuthenticationInfo() => create();
  factory AuthenticationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationInfo clone() => AuthenticationInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationInfo copyWith(void Function(AuthenticationInfo) updates) => super.copyWith((message) => updates(message as AuthenticationInfo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationInfo create() => AuthenticationInfo._();
  AuthenticationInfo createEmptyInstance() => create();
  static $pb.PbList<AuthenticationInfo> createRepeated() => $pb.PbList<AuthenticationInfo>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationInfo>(create);
  static AuthenticationInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class TokenInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  TokenInfo._() : super();
  factory TokenInfo() => create();
  factory TokenInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenInfo clone() => TokenInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenInfo copyWith(void Function(TokenInfo) updates) => super.copyWith((message) => updates(message as TokenInfo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenInfo create() => TokenInfo._();
  TokenInfo createEmptyInstance() => create();
  static $pb.PbList<TokenInfo> createRepeated() => $pb.PbList<TokenInfo>();
  @$core.pragma('dart2js:noInline')
  static TokenInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenInfo>(create);
  static TokenInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class CallStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CallStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'context')
    ..e<CallStatus_Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: CallStatus_Status.None, valueOf: CallStatus_Status.valueOf, enumValues: CallStatus_Status.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'WebRTCSessionId', protoName: 'WebRTCSessionId')
    ..hasRequiredFields = false
  ;

  CallStatus._() : super();
  factory CallStatus() => create();
  factory CallStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallStatus clone() => CallStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallStatus copyWith(void Function(CallStatus) updates) => super.copyWith((message) => updates(message as CallStatus)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CallStatus create() => CallStatus._();
  CallStatus createEmptyInstance() => create();
  static $pb.PbList<CallStatus> createRepeated() => $pb.PbList<CallStatus>();
  @$core.pragma('dart2js:noInline')
  static CallStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallStatus>(create);
  static CallStatus _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get context => $_getSZ(0);
  @$pb.TagNumber(1)
  set context($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContext() => $_has(0);
  @$pb.TagNumber(1)
  void clearContext() => clearField(1);

  @$pb.TagNumber(2)
  CallStatus_Status get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(CallStatus_Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get webRTCSessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set webRTCSessionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWebRTCSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebRTCSessionId() => clearField(3);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class OnlineUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OnlineUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StreamId', protoName: 'StreamId')
    ..aOM<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  OnlineUser._() : super();
  factory OnlineUser() => create();
  factory OnlineUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnlineUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnlineUser clone() => OnlineUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnlineUser copyWith(void Function(OnlineUser) updates) => super.copyWith((message) => updates(message as OnlineUser)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OnlineUser create() => OnlineUser._();
  OnlineUser createEmptyInstance() => create();
  static $pb.PbList<OnlineUser> createRepeated() => $pb.PbList<OnlineUser>();
  @$core.pragma('dart2js:noInline')
  static OnlineUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnlineUser>(create);
  static OnlineUser _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get streamId => $_getSZ(0);
  @$pb.TagNumber(1)
  set streamId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(1);
}

class WebRTCEvent_DescriptionData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCEvent.DescriptionData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdp')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  WebRTCEvent_DescriptionData._() : super();
  factory WebRTCEvent_DescriptionData() => create();
  factory WebRTCEvent_DescriptionData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCEvent_DescriptionData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCEvent_DescriptionData clone() => WebRTCEvent_DescriptionData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCEvent_DescriptionData copyWith(void Function(WebRTCEvent_DescriptionData) updates) => super.copyWith((message) => updates(message as WebRTCEvent_DescriptionData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_DescriptionData create() => WebRTCEvent_DescriptionData._();
  WebRTCEvent_DescriptionData createEmptyInstance() => create();
  static $pb.PbList<WebRTCEvent_DescriptionData> createRepeated() => $pb.PbList<WebRTCEvent_DescriptionData>();
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_DescriptionData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCEvent_DescriptionData>(create);
  static WebRTCEvent_DescriptionData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sdp => $_getSZ(0);
  @$pb.TagNumber(1)
  set sdp($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSdp() => $_has(0);
  @$pb.TagNumber(1)
  void clearSdp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class WebRTCEvent_OfferData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCEvent.OfferData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOM<WebRTCEvent_DescriptionData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: WebRTCEvent_DescriptionData.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Media', protoName: 'Media')
    ..hasRequiredFields = false
  ;

  WebRTCEvent_OfferData._() : super();
  factory WebRTCEvent_OfferData() => create();
  factory WebRTCEvent_OfferData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCEvent_OfferData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCEvent_OfferData clone() => WebRTCEvent_OfferData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCEvent_OfferData copyWith(void Function(WebRTCEvent_OfferData) updates) => super.copyWith((message) => updates(message as WebRTCEvent_OfferData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_OfferData create() => WebRTCEvent_OfferData._();
  WebRTCEvent_OfferData createEmptyInstance() => create();
  static $pb.PbList<WebRTCEvent_OfferData> createRepeated() => $pb.PbList<WebRTCEvent_OfferData>();
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_OfferData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCEvent_OfferData>(create);
  static WebRTCEvent_OfferData _defaultInstance;

  @$pb.TagNumber(3)
  WebRTCEvent_DescriptionData get description => $_getN(0);
  @$pb.TagNumber(3)
  set description(WebRTCEvent_DescriptionData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
  @$pb.TagNumber(3)
  WebRTCEvent_DescriptionData ensureDescription() => $_ensure(0);

  @$pb.TagNumber(5)
  $core.String get media => $_getSZ(1);
  @$pb.TagNumber(5)
  set media($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasMedia() => $_has(1);
  @$pb.TagNumber(5)
  void clearMedia() => clearField(5);
}

class WebRTCEvent_AnswerData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCEvent.AnswerData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOM<WebRTCEvent_DescriptionData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: WebRTCEvent_DescriptionData.create)
    ..hasRequiredFields = false
  ;

  WebRTCEvent_AnswerData._() : super();
  factory WebRTCEvent_AnswerData() => create();
  factory WebRTCEvent_AnswerData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCEvent_AnswerData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCEvent_AnswerData clone() => WebRTCEvent_AnswerData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCEvent_AnswerData copyWith(void Function(WebRTCEvent_AnswerData) updates) => super.copyWith((message) => updates(message as WebRTCEvent_AnswerData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_AnswerData create() => WebRTCEvent_AnswerData._();
  WebRTCEvent_AnswerData createEmptyInstance() => create();
  static $pb.PbList<WebRTCEvent_AnswerData> createRepeated() => $pb.PbList<WebRTCEvent_AnswerData>();
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_AnswerData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCEvent_AnswerData>(create);
  static WebRTCEvent_AnswerData _defaultInstance;

  @$pb.TagNumber(3)
  WebRTCEvent_DescriptionData get description => $_getN(0);
  @$pb.TagNumber(3)
  set description(WebRTCEvent_DescriptionData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
  @$pb.TagNumber(3)
  WebRTCEvent_DescriptionData ensureDescription() => $_ensure(0);
}

class WebRTCEvent_CandidateData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCEvent.CandidateData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SdpMLineIndex', $pb.PbFieldType.O3, protoName: 'SdpMLineIndex')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SdpMid', protoName: 'SdpMid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Candidate', protoName: 'Candidate')
    ..hasRequiredFields = false
  ;

  WebRTCEvent_CandidateData._() : super();
  factory WebRTCEvent_CandidateData() => create();
  factory WebRTCEvent_CandidateData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCEvent_CandidateData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCEvent_CandidateData clone() => WebRTCEvent_CandidateData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCEvent_CandidateData copyWith(void Function(WebRTCEvent_CandidateData) updates) => super.copyWith((message) => updates(message as WebRTCEvent_CandidateData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_CandidateData create() => WebRTCEvent_CandidateData._();
  WebRTCEvent_CandidateData createEmptyInstance() => create();
  static $pb.PbList<WebRTCEvent_CandidateData> createRepeated() => $pb.PbList<WebRTCEvent_CandidateData>();
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_CandidateData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCEvent_CandidateData>(create);
  static WebRTCEvent_CandidateData _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sdpMLineIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set sdpMLineIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSdpMLineIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearSdpMLineIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sdpMid => $_getSZ(1);
  @$pb.TagNumber(2)
  set sdpMid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSdpMid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSdpMid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get candidate => $_getSZ(2);
  @$pb.TagNumber(3)
  set candidate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCandidate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCandidate() => clearField(3);
}

class WebRTCEvent_PeersData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCEvent.PeersData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Peers', protoName: 'Peers')
    ..hasRequiredFields = false
  ;

  WebRTCEvent_PeersData._() : super();
  factory WebRTCEvent_PeersData() => create();
  factory WebRTCEvent_PeersData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCEvent_PeersData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCEvent_PeersData clone() => WebRTCEvent_PeersData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCEvent_PeersData copyWith(void Function(WebRTCEvent_PeersData) updates) => super.copyWith((message) => updates(message as WebRTCEvent_PeersData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_PeersData create() => WebRTCEvent_PeersData._();
  WebRTCEvent_PeersData createEmptyInstance() => create();
  static $pb.PbList<WebRTCEvent_PeersData> createRepeated() => $pb.PbList<WebRTCEvent_PeersData>();
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent_PeersData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCEvent_PeersData>(create);
  static WebRTCEvent_PeersData _defaultInstance;

  @$pb.TagNumber(8)
  $core.List<$core.String> get peers => $_getList(0);
}

enum WebRTCEvent_Data {
  offer, 
  answer, 
  candidate, 
  peersList, 
  notSet
}

class WebRTCEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WebRTCEvent_Data> _WebRTCEvent_DataByTag = {
    5 : WebRTCEvent_Data.offer,
    6 : WebRTCEvent_Data.answer,
    7 : WebRTCEvent_Data.candidate,
    8 : WebRTCEvent_Data.peersList,
    0 : WebRTCEvent_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..oo(0, [5, 6, 7, 8])
    ..e<WebRTCEvent_EventTypes>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'EventType', $pb.PbFieldType.OE, protoName: 'EventType', defaultOrMaker: WebRTCEvent_EventTypes.eNone, valueOf: WebRTCEvent_EventTypes.valueOf, enumValues: WebRTCEvent_EventTypes.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SessionId', protoName: 'SessionId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', protoName: 'To')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', protoName: 'From')
    ..aOM<WebRTCEvent_OfferData>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Offer', protoName: 'Offer', subBuilder: WebRTCEvent_OfferData.create)
    ..aOM<WebRTCEvent_AnswerData>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Answer', protoName: 'Answer', subBuilder: WebRTCEvent_AnswerData.create)
    ..aOM<WebRTCEvent_CandidateData>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Candidate', protoName: 'Candidate', subBuilder: WebRTCEvent_CandidateData.create)
    ..aOM<WebRTCEvent_PeersData>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PeersList', protoName: 'PeersList', subBuilder: WebRTCEvent_PeersData.create)
    ..hasRequiredFields = false
  ;

  WebRTCEvent._() : super();
  factory WebRTCEvent() => create();
  factory WebRTCEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCEvent clone() => WebRTCEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCEvent copyWith(void Function(WebRTCEvent) updates) => super.copyWith((message) => updates(message as WebRTCEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent create() => WebRTCEvent._();
  WebRTCEvent createEmptyInstance() => create();
  static $pb.PbList<WebRTCEvent> createRepeated() => $pb.PbList<WebRTCEvent>();
  @$core.pragma('dart2js:noInline')
  static WebRTCEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCEvent>(create);
  static WebRTCEvent _defaultInstance;

  WebRTCEvent_Data whichData() => _WebRTCEvent_DataByTag[$_whichOneof(0)];
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WebRTCEvent_EventTypes get eventType => $_getN(0);
  @$pb.TagNumber(1)
  set eventType(WebRTCEvent_EventTypes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get from => $_getSZ(3);
  @$pb.TagNumber(4)
  set from($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrom() => clearField(4);

  @$pb.TagNumber(5)
  WebRTCEvent_OfferData get offer => $_getN(4);
  @$pb.TagNumber(5)
  set offer(WebRTCEvent_OfferData v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOffer() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffer() => clearField(5);
  @$pb.TagNumber(5)
  WebRTCEvent_OfferData ensureOffer() => $_ensure(4);

  @$pb.TagNumber(6)
  WebRTCEvent_AnswerData get answer => $_getN(5);
  @$pb.TagNumber(6)
  set answer(WebRTCEvent_AnswerData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAnswer() => $_has(5);
  @$pb.TagNumber(6)
  void clearAnswer() => clearField(6);
  @$pb.TagNumber(6)
  WebRTCEvent_AnswerData ensureAnswer() => $_ensure(5);

  @$pb.TagNumber(7)
  WebRTCEvent_CandidateData get candidate => $_getN(6);
  @$pb.TagNumber(7)
  set candidate(WebRTCEvent_CandidateData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCandidate() => $_has(6);
  @$pb.TagNumber(7)
  void clearCandidate() => clearField(7);
  @$pb.TagNumber(7)
  WebRTCEvent_CandidateData ensureCandidate() => $_ensure(6);

  @$pb.TagNumber(8)
  WebRTCEvent_PeersData get peersList => $_getN(7);
  @$pb.TagNumber(8)
  set peersList(WebRTCEvent_PeersData v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPeersList() => $_has(7);
  @$pb.TagNumber(8)
  void clearPeersList() => clearField(8);
  @$pb.TagNumber(8)
  WebRTCEvent_PeersData ensurePeersList() => $_ensure(7);
}

class NotificationData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NotificationData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'context')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detail')
    ..hasRequiredFields = false
  ;

  NotificationData._() : super();
  factory NotificationData() => create();
  factory NotificationData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationData clone() => NotificationData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationData copyWith(void Function(NotificationData) updates) => super.copyWith((message) => updates(message as NotificationData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationData create() => NotificationData._();
  NotificationData createEmptyInstance() => create();
  static $pb.PbList<NotificationData> createRepeated() => $pb.PbList<NotificationData>();
  @$core.pragma('dart2js:noInline')
  static NotificationData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationData>(create);
  static NotificationData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get context => $_getSZ(1);
  @$pb.TagNumber(2)
  set context($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get detail => $_getSZ(2);
  @$pb.TagNumber(3)
  set detail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDetail() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetail() => clearField(3);
}

class UserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..hasRequiredFields = false
  ;

  UserInfo._() : super();
  factory UserInfo() => create();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);
}

class UserListData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserListData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..pc<UserInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', $pb.PbFieldType.PM, subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  UserListData._() : super();
  factory UserListData() => create();
  factory UserListData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserListData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserListData clone() => UserListData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserListData copyWith(void Function(UserListData) updates) => super.copyWith((message) => updates(message as UserListData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserListData create() => UserListData._();
  UserListData createEmptyInstance() => create();
  static $pb.PbList<UserListData> createRepeated() => $pb.PbList<UserListData>();
  @$core.pragma('dart2js:noInline')
  static UserListData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserListData>(create);
  static UserListData _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserInfo> get user => $_getList(0);
}

class RingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userid')
    ..hasRequiredFields = false
  ;

  RingRequest._() : super();
  factory RingRequest() => create();
  factory RingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RingRequest clone() => RingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RingRequest copyWith(void Function(RingRequest) updates) => super.copyWith((message) => updates(message as RingRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RingRequest create() => RingRequest._();
  RingRequest createEmptyInstance() => create();
  static $pb.PbList<RingRequest> createRepeated() => $pb.PbList<RingRequest>();
  @$core.pragma('dart2js:noInline')
  static RingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RingRequest>(create);
  static RingRequest _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get userid => $_getSZ(0);
  @$pb.TagNumber(2)
  set userid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(2)
  void clearUserid() => clearField(2);
}

class RingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..e<RingResponse_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', $pb.PbFieldType.OE, protoName: 'Response', defaultOrMaker: RingResponse_Status.None, valueOf: RingResponse_Status.valueOf, enumValues: RingResponse_Status.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'WebRTCSessionId', protoName: 'WebRTCSessionId')
    ..hasRequiredFields = false
  ;

  RingResponse._() : super();
  factory RingResponse() => create();
  factory RingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RingResponse clone() => RingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RingResponse copyWith(void Function(RingResponse) updates) => super.copyWith((message) => updates(message as RingResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RingResponse create() => RingResponse._();
  RingResponse createEmptyInstance() => create();
  static $pb.PbList<RingResponse> createRepeated() => $pb.PbList<RingResponse>();
  @$core.pragma('dart2js:noInline')
  static RingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RingResponse>(create);
  static RingResponse _defaultInstance;

  @$pb.TagNumber(1)
  RingResponse_Status get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(RingResponse_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get webRTCSessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set webRTCSessionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWebRTCSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebRTCSessionId() => clearField(2);
}

class WebRTCSubscribeReqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRTCSubscribeReqest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId')
    ..hasRequiredFields = false
  ;

  WebRTCSubscribeReqest._() : super();
  factory WebRTCSubscribeReqest() => create();
  factory WebRTCSubscribeReqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRTCSubscribeReqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRTCSubscribeReqest clone() => WebRTCSubscribeReqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRTCSubscribeReqest copyWith(void Function(WebRTCSubscribeReqest) updates) => super.copyWith((message) => updates(message as WebRTCSubscribeReqest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRTCSubscribeReqest create() => WebRTCSubscribeReqest._();
  WebRTCSubscribeReqest createEmptyInstance() => create();
  static $pb.PbList<WebRTCSubscribeReqest> createRepeated() => $pb.PbList<WebRTCSubscribeReqest>();
  @$core.pragma('dart2js:noInline')
  static WebRTCSubscribeReqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRTCSubscribeReqest>(create);
  static WebRTCSubscribeReqest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class AnswerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnswerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'context')
    ..hasRequiredFields = false
  ;

  AnswerRequest._() : super();
  factory AnswerRequest() => create();
  factory AnswerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerRequest clone() => AnswerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerRequest copyWith(void Function(AnswerRequest) updates) => super.copyWith((message) => updates(message as AnswerRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswerRequest create() => AnswerRequest._();
  AnswerRequest createEmptyInstance() => create();
  static $pb.PbList<AnswerRequest> createRepeated() => $pb.PbList<AnswerRequest>();
  @$core.pragma('dart2js:noInline')
  static AnswerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerRequest>(create);
  static AnswerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get context => $_getSZ(0);
  @$pb.TagNumber(1)
  set context($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContext() => $_has(0);
  @$pb.TagNumber(1)
  void clearContext() => clearField(1);
}

class AnswerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnswerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gizem'), createEmptyInstance: create)
    ..e<AnswerResponse_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', $pb.PbFieldType.OE, protoName: 'Response', defaultOrMaker: AnswerResponse_Status.None, valueOf: AnswerResponse_Status.valueOf, enumValues: AnswerResponse_Status.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'WebRTCSessionId', protoName: 'WebRTCSessionId')
    ..hasRequiredFields = false
  ;

  AnswerResponse._() : super();
  factory AnswerResponse() => create();
  factory AnswerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerResponse clone() => AnswerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerResponse copyWith(void Function(AnswerResponse) updates) => super.copyWith((message) => updates(message as AnswerResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswerResponse create() => AnswerResponse._();
  AnswerResponse createEmptyInstance() => create();
  static $pb.PbList<AnswerResponse> createRepeated() => $pb.PbList<AnswerResponse>();
  @$core.pragma('dart2js:noInline')
  static AnswerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerResponse>(create);
  static AnswerResponse _defaultInstance;

  @$pb.TagNumber(1)
  AnswerResponse_Status get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(AnswerResponse_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get webRTCSessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set webRTCSessionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWebRTCSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebRTCSessionId() => clearField(2);
}


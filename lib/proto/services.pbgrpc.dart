///
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'models.pb.dart' as $0;
export 'services.pb.dart';

class AuthenticationClient extends $grpc.Client {
  static final _$login =
      $grpc.ClientMethod<$0.AuthenticationInfo, $0.TokenInfo>(
          '/gizem.Authentication/Login',
          ($0.AuthenticationInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.TokenInfo.fromBuffer(value));

  AuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TokenInfo> login($0.AuthenticationInfo request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.Authentication';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthenticationInfo, $0.TokenInfo>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationInfo.fromBuffer(value),
        ($0.TokenInfo value) => value.writeToBuffer()));
  }

  $async.Future<$0.TokenInfo> login_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthenticationInfo> request) async {
    return login(call, await request);
  }

  $async.Future<$0.TokenInfo> login(
      $grpc.ServiceCall call, $0.AuthenticationInfo request);
}

class WebRTCSignalClient extends $grpc.Client {
  static final _$subscribeToRoom =
      $grpc.ClientMethod<$0.WebRTCSubscribeReqest, $0.WebRTCEvent>(
          '/gizem.WebRTCSignal/SubscribeToRoom',
          ($0.WebRTCSubscribeReqest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.WebRTCEvent.fromBuffer(value));
  static final _$sendEvent =
      $grpc.ClientMethod<$0.WebRTCEvent, $0.EmptyResponse>(
          '/gizem.WebRTCSignal/SendEvent',
          ($0.WebRTCEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  WebRTCSignalClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.WebRTCEvent> subscribeToRoom(
      $0.WebRTCSubscribeReqest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$subscribeToRoom, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.EmptyResponse> sendEvent($0.WebRTCEvent request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$sendEvent, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class WebRTCSignalServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.WebRTCSignal';

  WebRTCSignalServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.WebRTCSubscribeReqest, $0.WebRTCEvent>(
        'SubscribeToRoom',
        subscribeToRoom_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.WebRTCSubscribeReqest.fromBuffer(value),
        ($0.WebRTCEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WebRTCEvent, $0.EmptyResponse>(
        'SendEvent',
        sendEvent_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.WebRTCEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.WebRTCEvent> subscribeToRoom_Pre($grpc.ServiceCall call,
      $async.Future<$0.WebRTCSubscribeReqest> request) async* {
    yield* subscribeToRoom(call, await request);
  }

  $async.Stream<$0.EmptyResponse> sendEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.WebRTCEvent> request) async* {
    yield* sendEvent(call, await request);
  }

  $async.Stream<$0.WebRTCEvent> subscribeToRoom(
      $grpc.ServiceCall call, $0.WebRTCSubscribeReqest request);
  $async.Stream<$0.EmptyResponse> sendEvent(
      $grpc.ServiceCall call, $0.WebRTCEvent request);
}

class NotificationClient extends $grpc.Client {
  static final _$subscribe =
      $grpc.ClientMethod<$0.EmptyRequest, $0.NotificationData>(
          '/gizem.Notification/Subscribe',
          ($0.EmptyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NotificationData.fromBuffer(value));

  NotificationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.NotificationData> subscribe($0.EmptyRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class NotificationServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.Notification';

  NotificationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.NotificationData>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.NotificationData value) => value.writeToBuffer()));
  }

  $async.Stream<$0.NotificationData> subscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Stream<$0.NotificationData> subscribe(
      $grpc.ServiceCall call, $0.EmptyRequest request);
}

class UserListClient extends $grpc.Client {
  static final _$subscribe =
      $grpc.ClientMethod<$0.EmptyRequest, $0.UserListData>(
          '/gizem.UserList/Subscribe',
          ($0.EmptyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserListData.fromBuffer(value));
  static final _$ring = $grpc.ClientMethod<$0.RingRequest, $0.RingResponse>(
      '/gizem.UserList/Ring',
      ($0.RingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RingResponse.fromBuffer(value));
  static final _$answer =
      $grpc.ClientMethod<$0.AnswerRequest, $0.AnswerResponse>(
          '/gizem.UserList/Answer',
          ($0.AnswerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AnswerResponse.fromBuffer(value));

  UserListClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.UserListData> subscribe($0.EmptyRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.RingResponse> ring($0.RingRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$ring, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.AnswerResponse> answer($0.AnswerRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$answer, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class UserListServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.UserList';

  UserListServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.UserListData>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.UserListData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RingRequest, $0.RingResponse>(
        'Ring',
        ring_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RingRequest.fromBuffer(value),
        ($0.RingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnswerRequest, $0.AnswerResponse>(
        'Answer',
        answer_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.AnswerRequest.fromBuffer(value),
        ($0.AnswerResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.UserListData> subscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Stream<$0.RingResponse> ring_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RingRequest> request) async* {
    yield* ring(call, await request);
  }

  $async.Stream<$0.AnswerResponse> answer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AnswerRequest> request) async* {
    yield* answer(call, await request);
  }

  $async.Stream<$0.UserListData> subscribe(
      $grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Stream<$0.RingResponse> ring(
      $grpc.ServiceCall call, $0.RingRequest request);
  $async.Stream<$0.AnswerResponse> answer(
      $grpc.ServiceCall call, $0.AnswerRequest request);
}

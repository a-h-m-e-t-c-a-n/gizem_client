///
//  Generated code. Do not modify.
//  source: proto/gizem.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'gizem.pb.dart' as $0;
export 'gizem.pb.dart';

class AuthenticationClient extends $grpc.Client {
  static final _$login =
      $grpc.ClientMethod<$0.AuthenticationQ, $0.AuthenticationP>(
          '/gizem.Authentication/Login',
          ($0.AuthenticationQ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticationP.fromBuffer(value));

  AuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthenticationP> login($0.AuthenticationQ request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.Authentication';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthenticationQ, $0.AuthenticationP>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthenticationQ.fromBuffer(value),
        ($0.AuthenticationP value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthenticationP> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthenticationQ> request) async {
    return login(call, await request);
  }

  $async.Future<$0.AuthenticationP> login(
      $grpc.ServiceCall call, $0.AuthenticationQ request);
}

class WebRTCSignalClient extends $grpc.Client {
  static final _$subscribeSessionInfoUpdate =
      $grpc.ClientMethod<$0.SessionInfoUpdateQ, $0.SessionInfoUpdateP>(
          '/gizem.WebRTCSignal/SubscribeSessionInfoUpdate',
          ($0.SessionInfoUpdateQ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SessionInfoUpdateP.fromBuffer(value));
  static final _$sendMessage =
      $grpc.ClientMethod<$0.SendMessageQ, $0.SendMessageP>(
          '/gizem.WebRTCSignal/SendMessage',
          ($0.SendMessageQ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendMessageP.fromBuffer(value));

  WebRTCSignalClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.SessionInfoUpdateP> subscribeSessionInfoUpdate(
      $0.SessionInfoUpdateQ request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$subscribeSessionInfoUpdate, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.SendMessageP> sendMessage($0.SendMessageQ request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$sendMessage, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class WebRTCSignalServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.WebRTCSignal';

  WebRTCSignalServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.SessionInfoUpdateQ, $0.SessionInfoUpdateP>(
            'SubscribeSessionInfoUpdate',
            subscribeSessionInfoUpdate_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.SessionInfoUpdateQ.fromBuffer(value),
            ($0.SessionInfoUpdateP value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendMessageQ, $0.SendMessageP>(
        'SendMessage',
        sendMessage_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SendMessageQ.fromBuffer(value),
        ($0.SendMessageP value) => value.writeToBuffer()));
  }

  $async.Stream<$0.SessionInfoUpdateP> subscribeSessionInfoUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SessionInfoUpdateQ> request) async* {
    yield* subscribeSessionInfoUpdate(call, await request);
  }

  $async.Stream<$0.SendMessageP> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendMessageQ> request) async* {
    yield* sendMessage(call, await request);
  }

  $async.Stream<$0.SessionInfoUpdateP> subscribeSessionInfoUpdate(
      $grpc.ServiceCall call, $0.SessionInfoUpdateQ request);
  $async.Stream<$0.SendMessageP> sendMessage(
      $grpc.ServiceCall call, $0.SendMessageQ request);
}

class UserListClient extends $grpc.Client {
  static final _$subscribeListUpdate =
      $grpc.ClientMethod<$0.SubscribeListUpdateQ, $0.SubscribeListUpdateP>(
          '/gizem.UserList/SubscribeListUpdate',
          ($0.SubscribeListUpdateQ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SubscribeListUpdateP.fromBuffer(value));

  UserListClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.SubscribeListUpdateP> subscribeListUpdate(
      $0.SubscribeListUpdateQ request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$subscribeListUpdate, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class UserListServiceBase extends $grpc.Service {
  $core.String get $name => 'gizem.UserList';

  UserListServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.SubscribeListUpdateQ, $0.SubscribeListUpdateP>(
            'SubscribeListUpdate',
            subscribeListUpdate_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.SubscribeListUpdateQ.fromBuffer(value),
            ($0.SubscribeListUpdateP value) => value.writeToBuffer()));
  }

  $async.Stream<$0.SubscribeListUpdateP> subscribeListUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SubscribeListUpdateQ> request) async* {
    yield* subscribeListUpdate(call, await request);
  }

  $async.Stream<$0.SubscribeListUpdateP> subscribeListUpdate(
      $grpc.ServiceCall call, $0.SubscribeListUpdateQ request);
}

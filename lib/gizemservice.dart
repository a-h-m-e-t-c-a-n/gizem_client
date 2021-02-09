import 'dart:async';
import 'package:grpc/grpc.dart';

import 'proto/models.pb.dart';
import 'proto/services.pbgrpc.dart';

class AuthInterceptors extends ClientInterceptor {
  String _token = "";
  AuthInterceptors(String token) {
    _token = token;
  }
  @override
  ResponseFuture<R> interceptUnary<Q, R>(
      ClientMethod<Q, R> method, Q request, CallOptions options, invoker) {
    var optionsAuth =
        CallOptions(metadata: {"Authorization": "Bearer " + _token});
    optionsAuth.mergedWith(options);
    return super.interceptUnary(method, request, optionsAuth, invoker);
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(ClientMethod<Q, R> method,
      Stream<Q> requests, CallOptions options, invoker) {
    var optionsAuth =
        CallOptions(metadata: {"Authorization": "Bearer " + _token});
    optionsAuth.mergedWith(options);
    return super.interceptStreaming(method, requests, optionsAuth, invoker);
  }
}

class GizemService {
  static ClientChannel _channel;

  static String _token = "";
  static ClientChannel _buildChannel1() {
    if (_channel == null) {
      _channel = ClientChannel(
        "192.168.1.33",
        port: 5000,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
    }
    _channel.createConnection();
    return _channel;
  }

  static Future Login(String username, String password) async {
    try {
      var client = AuthenticationClient(_buildChannel1());
      var result = await client.login(new AuthenticationInfo()
        ..username = username
        ..password = password);

      _token = result.token;
    } catch (ex) {
      print(ex);
    }
  }

  static WebRTCSignalClient BuildWebRTCSignal() {
    var client = WebRTCSignalClient(_buildChannel1(),
        interceptors: [new AuthInterceptors(_token)]);
    return client;
  }
}

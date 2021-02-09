part of state;

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

class Service with ChangeNotifier {
  final Object host;
  final int port;
  bool _isConnected;

  bool get isConnected => _isConnected;
  void set(bool state) {
    _isConnected = state;
    notifyListeners();
  }

  bool isAuthenticated = false;

  Service(this.host, {this.port});

  ClientChannel _channel;

  //test
  String _token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6ImFobWV0Iiwic2Vzc2lvbiI6IjEzOGJlYTZjLTc1MGQtNDY3ZS1iYWVkLWNlZmJmMGFlMDY3MiIsIm5iZiI6MTYxMjEwMDU2NywiZXhwIjoxNjE0NjkyNTY3LCJpYXQiOjE2MTIxMDA1Njd9.gpCZoiihtfDhUXfPfTB7C3IhWEnHRzxbqmXI_wTUdwo";

  Future<ClientChannel> _buildChannel() async {
    if (_channel == null) {
      _channel = ClientChannel(
        this.host,
        port: this.port,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          //connectionTimeout: Duration(seconds: 3),
        ),
      );
    }
    return _channel;
  }

  Future login(String username, String password) async {
    try {
      var client = AuthenticationClient(await _buildChannel(),
          options: CallOptions(timeout: Duration(seconds: 30)));
      var result = await client.login(
        new AuthenticationInfo()
          ..username = username
          ..password = password,
      );

      _token = result.token;

      isAuthenticated = true;
      notifyListeners();
    } catch (ex) {
      print(ex);
    }
  }

  void logout() async {
    try {
      _token = null;
      isAuthenticated = false;
      notifyListeners();
    } catch (ex) {
      print(ex);
    }
  }

  Future<WebRTCSignalClient> buildWebRTCSignal() async {
    var channel = await _buildChannel();
    channel
        .getConnection()
        .catchError((error) => {print("connection error $error")});
    var client = WebRTCSignalClient(channel,
        interceptors: [new AuthInterceptors(_token)],
        options: CallOptions(timeout: Duration(seconds: 10)));
    return client;
  }

  Future<UserListClient> buildUserListClient() async {
    var client = UserListClient(await _buildChannel(),
        interceptors: [new AuthInterceptors(_token)],
        options: CallOptions(timeout: Duration(seconds: 3)));
    return client;
  }
}

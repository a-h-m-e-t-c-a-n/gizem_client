part of state;

class UserInfo {
  String id;
  String name;
}

enum UserList_Status { none, loading, streaming, connectionerror }

class UserList with ChangeNotifier {
  var _disposed = false;
  var retryTime = 0;
  Timer _retryTimer;
  UserList_Status Status = UserList_Status.none;
  var users = <UserInfo>[];
  StreamSubscription subscription;
  final Service service;
  UserList(this.service);

  Future subscribe() async {
    _retryTimer?.cancel();
    _retryTimer = null;

    Status = states.UserList_Status.loading;
    notifyListeners();

    var userlistservice = await service.buildUserListClient();
    var responseStream =
        userlistservice.subscribeListUpdate(SubscribeListUpdateQ());

    subscription = responseStream.listen((userUpdate) {
      users = userUpdate.user.map((data) {
        var ret = states.UserInfo()
          ..id = data.userid
          ..name = data.username;
        return ret;
      }).toList();

      Status = UserList_Status.streaming;

      notifyListeners();
    });
    subscription.onError((error) {
      if (!_disposed) {
        Status = UserList_Status.connectionerror;
        notifyListeners();
        starRetry();
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

  @override
  void dispose() {
    subscription?.cancel();
    _retryTimer?.cancel();
    _disposed = true;
    super.dispose();
  }
}

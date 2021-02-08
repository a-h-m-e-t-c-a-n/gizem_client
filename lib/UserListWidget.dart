import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:async/async.dart';
import 'state/lib.dart' as states;

class UserListWidget extends StatefulWidget {
  UserListWidget({Key key}) : super(key: key);

  @override
  _UserListWidget createState() => _UserListWidget();
}

class _UserListWidget extends State<UserListWidget> {
  states.UserList model;
  CancelableOperation initJob;

  @override
  void initState() {
    model = states.UserList(context.read());
    initJob = CancelableOperation.fromFuture(init());
  }

  Future init() async {
    // await Future.delayed(Duration(seconds: 30));
    await model.subscribe();
  }

  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider<states.UserList>.value(
        value: model,
        child: Consumer<states.UserList>(
            builder: (BuildContext context, state, Widget child) {
          return _buildDefault(state, state.retryTime);
        }),
      );
/*Widget build(BuildContext context) => FutureBuilder(
      future: init(),
      builder: (context, snapshot) {
        return ChangeNotifierProvider<states.UserList>.value(
          value: model,
          child: Consumer<states.UserList>(
              builder: (BuildContext context, state, Widget child) {
            return _buildList(state);
          }),
        );
      });*/
  _buildDefault(states.UserList userList, int time) {
    switch (userList.Status) {
      case states.UserList_Status.loading:
        return _buildLoading(userList);
        break;
      case states.UserList_Status.connectionerror:
        return _buildConnectionError(userList, time);
        break;
      case states.UserList_Status.streaming:
        return _buildList(userList);
        break;
      case states.UserList_Status.none:
        break;
    }
  }

  _buildConnectionError(states.UserList userList, int time) {
    return AlertDialog(
      title: Text('Warning !'),
      content: const Text('We can not connect to server'),
      actions: [
        FlatButton(
          child: Text("Retry($time)"),
          onPressed: () {
            userList.subscribe();
          },
        )
      ],
    );
  }

  _buildLoading(states.UserList userList) {
    return AlertDialog(
      title: Text('Information'),
      content: const Text('Loading'),
      actions: [],
    );
  }

  _buildList(states.UserList userList) {
    return ListView(children: _buildItems(userList.users));
  }

  _buildItems(List<states.UserInfo> users) {
    var widgets = <Widget>[];
    for (var userinfo in users) {
      widgets.add(Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text(userinfo.name),
          /*trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [FlutterLogo()],
          ),*/
        ),
      ));
    }
    return widgets;
  }

  void deinit() {
    try {
      model.dispose();
    } catch (ex) {
      print("warning:$ex");
    }
    initJob.cancel();
  }

  @override
  void dispose() {
    debugPrint('dispose');
    deinit();
  }

  @override
  void reassemble() {
    debugPrint('reassembled');
    deinit();
  }
}

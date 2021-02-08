import 'dart:core';
import 'package:flutter/material.dart';
import 'package:gizem_client/UserListWidget.dart';
import 'package:provider/provider.dart';

import 'LoginWidget.dart';
import 'state/lib.dart' as states;

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gizem Messenger'),
        ),
        body: _buildMain());
  }

  _buildLogin() {
    return LoginWidget();
  }

  _buildMain() {
    return UserListWidget();
  }
}

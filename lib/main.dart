import 'dart:core';

import 'package:flutter/material.dart';
import 'package:gizem_client/MainWidget.dart';
import 'package:provider/provider.dart';
import 'state/lib.dart' as states;

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = states.Service("192.168.1.33", port: 5000);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<states.Service>.value(
          value: service,
        ),
      ],
      child: MaterialApp(home: MainWidget()),
    );
  }
}

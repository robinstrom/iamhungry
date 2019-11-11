import 'package:flutter/material.dart';
import 'HomeWidget.dart';

class HomeRoute extends StatelessWidget {
  static const String _title = 'iamhungry';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      theme: new ThemeData(),
      home: new HomeWidget(),
    );
  }
}

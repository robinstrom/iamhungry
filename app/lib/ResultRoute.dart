import 'package:flutter/material.dart';
import 'ResultWidget.dart';

class ResultRoute extends StatelessWidget {
  static const String _title = 'iamhungry';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      theme: new ThemeData(),
      home: new ResultWidget(),
    );
  }
}

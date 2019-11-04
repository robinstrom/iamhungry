import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'iamhungry';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('iamhungry'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
            ],
          ),
          body:
              Stack(children: <Widget>[Container(child: MyStatefulWidget())])),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Opacity(
          opacity: 0.7,
          child: Container(
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/avocado-egg-sandwich.png'),
                fit: BoxFit.cover),
          )),
        ),
        Center(
          child: TextField(
            autofocus: true,
            enabled: true,
            showCursor: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), border: OutlineInputBorder()),
          ),
        ),
      ]),
    );
  }
}

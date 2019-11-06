import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'iamhungry';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Stack(children: <Widget>[
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                title: const Text('iamhungry'),
                elevation: 0.0,
                actions: <Widget>[
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
                ]),
            body: Container(
              color: Colors.transparent,
            )),
        Container(child: MyStatefulWidget())
      ]),
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
      appBar: AppBar(
          title: const Text('iamhungry'),
          backgroundColor: Colors.black87,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
          ]),
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
        Container(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30.0),
                width: 350,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      filled: true,
                      fillColor: Colors.black87,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      border: OutlineInputBorder()),
                ),
              ),
              Container(
                child: Text(
                  'Here should the Icon be',
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

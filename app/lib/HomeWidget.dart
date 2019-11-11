import 'package:flutter/material.dart';
import 'ResultRoute.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('images/avocado-egg-sandwich.png'),
                fit: BoxFit.cover),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            title: new Text(
              'iamhungry',
              style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 100.0,
                    ),
                  ],
                  fontSize: 30.0,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w400),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20.0),
            child: new TextField(
              style: new TextStyle(color: Colors.white, fontSize: 30),
              decoration: new InputDecoration(
                  contentPadding: new EdgeInsets.all(10.0),
                  filled: true,
                  fillColor: Colors.black87,
                  prefixIcon: new Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  border: new OutlineInputBorder()),
              onSubmitted: (ingredients) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultRoute(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

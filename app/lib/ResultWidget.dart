import 'package:flutter/material.dart';
import 'HomeRoute.dart';

class ResultWidget extends StatefulWidget {
  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
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
          backgroundColor: Colors.black,
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeRoute(),
                  ),
                );
              },
            ),
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
          body: ListView(
            children: <Widget>[
              Image.asset('images/Baked-Salmon-in-Foil.jpg',
                  height: 300.0, fit: BoxFit.fitWidth),
              Image.asset('images/Crispy-Cauliflower-Tacos.jpg',
                  height: 300.0, fit: BoxFit.fitWidth),
              Image.asset('images/pork.jpg',
                  height: 300.0, fit: BoxFit.fitWidth),
              Image.asset('images/sausage-kale-gnocchi.jpg',
                  height: 300.0, fit: BoxFit.fitWidth),
            ],
          ),
        ),
      ],
    );
  }
}

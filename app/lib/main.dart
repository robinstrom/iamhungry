import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'iamhungry',
        home: HomeRoute(),
      ),
    );

class HomeRoute extends StatelessWidget {
  static const String _title = 'iamhungry';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      theme: new ThemeData(),
      home: new MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
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
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultRoute(),
                      ),
                    );
                  }),
            ],
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
              onSubmitted: (s){
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

class Recipe {
  int id;
  String name;
  String img;
  String recipeDetails;

  Recipe(this.id, this.name, this.img, this.recipeDetails);
}

import 'dart:convert';

import 'package:app/ResultWidget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'RecipeBasic.dart';

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
              onSubmitted: (ingredients) async {
                List<RecipeBasic> listOfRecipes = await postIngredients(
                    'https://127.0.0.1:8999/recipes',
                    body: mapIngredients(ingredients));
                print(listOfRecipes[0].image);
                Navigator.pushNamed(
                  context,
                  "/result",
                  arguments: listOfRecipes
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

Map mapIngredients(ingredients) {
  var map = new Map<String, dynamic>();
  map["ingredients"] = ingredients;
  return map;
}

Future<List<RecipeBasic>> postIngredients(String url, {Map body}) async {
  Map<String, String> header = {"Content-type": "application/json", "Accept": "application/json"};
  return http.post(url, headers: header, body: jsonEncode(body)).then((http.Response response) {
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400 || json == null) {
      print(statusCode);
      throw new Exception("Error while fetching data");
    }
    print(statusCode);
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<RecipeBasic>((json) => RecipeBasic.fromJson(json)).toList();
  });
}

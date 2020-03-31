import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          backgroundColor: Colors.black26,
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              iconSize: 40,
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(width: 30),
                Icon(Icons.restaurant_menu, size: 40),
                new Text(
                  'iamhungry',
                  style: GoogleFonts.greatVibes(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 80),
              ],
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
                Navigator.pushNamed(context, "/result",
                    arguments: listOfRecipes);
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
  Map<String, String> header = {
    "Content-type": "application/json",
    "Accept": "application/json"
  };
  return http
      .post(url, headers: header, body: jsonEncode(body))
      .then((http.Response response) {
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400 || json == null) {
      print(statusCode);
      throw new Exception("Error while fetching data");
    }
    print(statusCode);
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed
        .map<RecipeBasic>((json) => RecipeBasic.fromJson(json))
        .toList();
  });
}

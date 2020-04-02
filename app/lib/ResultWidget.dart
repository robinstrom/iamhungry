import 'package:flutter/material.dart';
import 'package:app/RecipeBasic.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeWidget.dart';

class ResultWidget extends StatefulWidget {

  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    final List<RecipeBasic> listOfRecipes = ModalRoute.of(context).settings.arguments;
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
                    builder: (context) => HomeWidget(),
                  ),
                );
              },
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.restaurant_menu, size: 40),
                  new Text(
                    'iamhungry',
                    style: GoogleFonts.greatVibes(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: GridView.count(
      crossAxisCount: 3,
      children: List.generate(listOfRecipes.length, (index) {
        return Image.network(
        listOfRecipes[index].image,
        width: 300.0);
        }),
        ),
        ),
        ],
        );
        }
        }
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWidget extends StatefulWidget {
  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
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
                Navigator.pushNamed(context, "/");
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage('images/profile-pic.jpg'),
                backgroundColor: Colors.transparent,
              ),
              Text(
                'Robin Ström',
                style: GoogleFonts.barlow(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Creator / Developer',
                style: GoogleFonts.muli(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'robin@rstreamdev.com',
                    style: GoogleFonts.muli(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

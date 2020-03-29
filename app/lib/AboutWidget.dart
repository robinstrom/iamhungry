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
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pushNamed(context, "/");
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage('images/profile-pic.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Container(
                child: Text(
                  'Creator', 
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.white),
                    fontSize: 60,
                    fontWeight: FontWeight.w600,
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Newbie with Flutter.', 
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.white),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    ),
                ),
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

import 'package:app/HomeWidget.dart';
import 'package:app/ResultWidget.dart';
import 'package:flutter/material.dart';
import 'HomeRoute.dart';

import 'dart:io';

class MyHttpOverrides extends HttpOverrides {

  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(
      MaterialApp(
        title: 'iamhungry',
        initialRoute: "/",
        routes: {
          "/": (context) => HomeWidget(),
          "/result": (context) => ResultWidget(),
        },
      ),
    );
}
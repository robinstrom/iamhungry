import 'package:app/AboutWidget.dart';
import 'package:app/HomeWidget.dart';
import 'package:app/MyHttpOverrides.dart';
import 'package:app/ResultWidget.dart';
import 'package:flutter/material.dart';

import 'dart:io';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(
      MaterialApp(
        title: 'iamhungry',
        initialRoute: "/",
        routes: {
          "/": (context) => HomeWidget(),
          "/result": (context) => ResultWidget(),
          "/about": (context) => AboutWidget(),
        },
      ),
    );
}
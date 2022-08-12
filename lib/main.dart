import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/home_screen.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';
import 'package:flutter_navigation/screen/route_three_screen.dart';
import 'package:flutter_navigation/screen/route_two_screen.dart';

const HOME_ROUTE = '/';
void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        '/one': (context) => RouteOne(),
        '/two': (context) => RouteTwo(),
        '/three': (context) => RouteThree(),
      },
    ),
  );
}

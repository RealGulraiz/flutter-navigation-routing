import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/screen_three.dart';
import 'package:untitled/screen_two.dart';
import 'package:untitled/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo(data: settings.arguments as Map, ));
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
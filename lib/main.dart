import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/screen_three.dart';
import 'package:untitled/screen_two.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Routing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,

      // method 1: navigation
      // home: HomeScreen(),

      // method 2: routes
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   ScreenTwo.id: (context) => ScreenTwo(),
      //   ScreenThree.id: (context) => ScreenThree(),
      //
      // },
    );
  }
}
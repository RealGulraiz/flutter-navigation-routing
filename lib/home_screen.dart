import 'package:flutter/material.dart';
import 'package:untitled/screen_three.dart';
import 'package:untitled/screen_two.dart';
import 'package:untitled/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {

  // method 2 : routes
  // static const String id = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                //method #2:
                Navigator.pushNamed(context,
                    RouteName.screenTwo ,
                  arguments: {
                  'frontend': 'Dart',
                    'backend': 'Firebase'
                  }
                );

                // Method #2: Routes (using inital route and routes instead of home in main.dart
                // Navigator.pushNamed(context,
                //   ScreenTwo.id ,
                //   arguments: {
                //   'name' : "RealGulraiz",
                //     'age' : 65
                //   }
                // );

                // Method#1 : Traditional Navigation
                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => ScreenTwo(name: "RealGulraiz",))
                // );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text('Goto Screen 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

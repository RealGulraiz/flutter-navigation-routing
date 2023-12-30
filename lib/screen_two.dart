import 'package:flutter/material.dart';
import 'package:untitled/screen_three.dart';
import 'package:untitled/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {

  // method 2 : routes
  // static const String id = "screen_two";

  //method 3
  dynamic data;
  ScreenTwo({Key? key,
  required this.data ,
  }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {

    // for method #2 routes
    // final arguments = ModalRoute.of(context)!.settings.arguments as Map ;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['frontend']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                //method 3
                Navigator.pushNamed(context, RouteName.screenThree);

                // Method #2: Routes
                // Navigator.pushNamed(context,
                //   ScreenThree.id
                // );

                // Method#1 : Traditional Navigation
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenThree())
                // );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text('Next Screen'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text('Back'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

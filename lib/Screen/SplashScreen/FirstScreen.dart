import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mentalmandra/Screen/SplashScreen/NextScreen.dart';
//import 'package:heal_me/Screen/NextScreen.dart';


class  FirstScreen extends StatelessWidget {
  const  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color(0xFFC6C5C5),
      body: Padding(
        padding:  EdgeInsets.only(left:10,top:50),
        child: Stack(
          children: [
            // First Image at the top
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/bgcircle.png",
                height:250,
               // Ensure this path matches your actual asset location
               
                width:250,
              ),
            ),
            // Second Image overlapping the first
            Positioned(
              top:105 ,
              left: 110,
              child: Image.asset(
                 // Ensure this path matches your actual asset location
                height: 160,
                "assets/littleboy.png", 
              ),
            ),
            // Third Image overlapping the first and second
           Positioned(
              top: 380,
              left: 95,
              child: Text(
                "GET STARTED",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 480,
              left: 95,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the next screen here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextScreen()),
                  );
                },
              child: Stack(
                //alignment: Alignment.center,
                children: [
                   Image.asset(
                    "assets/nextopen.png",
                    height: 200, // Adjust size as needed
                    width: 200, // Adjust size as needed
                  ),
                  Positioned(
                    top: 73,
                    left:72, // Adjust vertical position of "NEXT" text
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:math';
import 'package:flutter/material.dart';

class JokeScreen extends StatelessWidget {
  final List<String> jokes = [
    'Why don’t scientists trust atoms? Because they make up everything!',
    'Why don’t some couples go to the gym? Because some relationships don’t work out.',
    'Why did the scarecrow win an award? Because he was outstanding in his field!',
    // Add more jokes here
  ];

  @override
  Widget build(BuildContext context) {
    final randomJoke = jokes[Random().nextInt(jokes.length)];
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Read a Joke'),
          backgroundColor:Color(0xffDE6060),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            randomJoke,
            style: TextStyle(fontSize: 24,color:Color(0xffDE6060),),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

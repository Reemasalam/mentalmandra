import 'dart:math';
import 'package:flutter/material.dart';

class QuoteScreen extends StatelessWidget {
  final List<String> quotes = [
    'The best way to predict the future is to invent it. – Alan Kay',
    'Life is 10% what happens to us and 90% how we react to it. – Charles R. Swindoll',
    'Your time is limited, don’t waste it living someone else’s life. – Steve Jobs',
    // Add more quotes here
  ];

  @override
  Widget build(BuildContext context) {
    final randomQuote = quotes[Random().nextInt(quotes.length)];
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Inspirational Quotes'),
          backgroundColor:Color(0xffDE6060),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            randomQuote,
            style: TextStyle(fontSize: 24, color:Color(0xffDE6060),),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:mentalmandra/Screen/FunTimeScreen/FunTimeScreen.dart';
import 'package:mentalmandra/Screen/FunTimeScreen/Jokes.dart';
import 'package:mentalmandra/Screen/FunTimeScreen/Quotes.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to Funtime!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Choose an activity to lift your mood:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          FuntimeOption(
            title: 'Play a Game',
            description: 'Engage in fun and relaxing games.',
            icon: Icons.videogame_asset,
            onTap: () {
              // Navigate to the game screen
            },
          ),
          FuntimeOption(
            title: 'Read a Joke',
            description: 'Brighten your day with a joke.',
            icon: Icons.emoji_emotions,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JokeScreen()),
              );
            },
          ),
          FuntimeOption(
            title: 'Inspirational Quotes',
            description: 'Get inspired with motivational quotes.',
            icon: Icons.format_quote,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuoteScreen()),
              );
            },
          ),
          // Add more options as needed
        ],
      ),
    );
  }
}

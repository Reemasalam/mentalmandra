import 'package:flutter/material.dart';
import 'package:mentalmandra/Screen/FunTimeScreen/GameScreen.dart';
import 'package:mentalmandra/Screen/FunTimeScreen/Jokes.dart';
import 'package:mentalmandra/Screen/FunTimeScreen/Quotes.dart';

class FuntimeScreen extends StatelessWidget {
  const FuntimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Funtime'),
       backgroundColor:Color(0xffDE6060),
      ),
      body: FuntimeContent(),
    );
  }
}

class FuntimeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "It's Time to Fun!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
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
               Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(),
                          ),
                       );
            },
          ),
          FuntimeOption(
            title: 'Read a Joke',
            description: 'Brighten your day with a joke.',
            icon: Icons.emoji_emotions,
            onTap: () {
               Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JokeScreen(),
                          ),
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
                          MaterialPageRoute(
                            builder: (context) => QuoteScreen(),
                          ),
                        );
            },
          ),
          // Add more options as needed
        ],
      ),
    );
  }
}

class FuntimeOption extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const FuntimeOption({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, size: 40, color:Color.fromARGB(255, 230, 112, 112),),
        title: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
        onTap: onTap,
      ),
    );
  }
}

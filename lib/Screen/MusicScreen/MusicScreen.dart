import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Music Mantra'),
        backgroundColor:  Color(0xffDE6060),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Recommended Music',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildMusicCard(
                    title: 'Relaxing Piano Music',
                    description: 'Calming piano compositions to reduce stress.',
                    imageUrl:'https://cdnb.artstation.com/p/assets/images/images/066/653/887/large/jamesa-relaxing-piano1.jpg?1693425275',
                    musicUrl: 'https://www.radioart.com/radioart-player/play?channel=8',
                  ),
                  _buildMusicCard(
                    title: 'Nature Sounds',
                    description: 'Natural sounds to promote relaxation and focus.',
                    imageUrl: 'https://cache.desktopnexus.com/thumbseg/1172/1172396-bigthumbnail.jpg',
                    musicUrl: 'https://music.apple.com/us/album/sounds-of-the-ocean-perfection-and-waves/318887938?i=318888025',
                  ),
                  // Add more music cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMusicCard({
    required String title,
    required String description,
    required String imageUrl,
    required String musicUrl,
  }) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          // Navigate to a music player or external link
          // Example: Launch URL or play music directly
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

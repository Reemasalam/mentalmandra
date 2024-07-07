import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HappyScreen extends StatelessWidget {
  const HappyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFED0B2),
      
      body: Padding(
        padding: EdgeInsets.all(2.w),
        child: ListView(
          children: [
            _buildRecommendationCard(
              'Listen to Music',
              'Music has the power to uplift your mood. Choose your favorite songs and enjoy!',
              Icons.music_note,
            ),
            _buildRecommendationCard(
              'Watch a Funny Video',
              'Laughter is the best medicine. Watch a funny video or a comedy show.',
              Icons.sentiment_very_satisfied,
            ),
            _buildRecommendationCard(
              'Go for a Walk',
              'Enjoy the outdoors. Take a walk in a nearby park or nature trail.',
              Icons.directions_walk,
            ),
            _buildRecommendationCard(
              'Read an Inspirational Book',
              'Find inspiration in words. Pick up a book that motivates you.',
              Icons.book,
            ),
            _buildRecommendationCard(
              'Practice Mindfulness',
              'Take a moment to relax and focus. Try deep breathing or meditation exercises.',
              Icons.self_improvement,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationCard(String title, String description, IconData iconData) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(1.w),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                size: 24.sp,
                color: Colors.orange, // Adjust color as needed
              ),
              SizedBox(width: 2.w),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}

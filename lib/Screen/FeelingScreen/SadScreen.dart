import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SadScreen extends StatelessWidget {
  const SadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Manage Sadness'),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.w),
        child: ListView(
          children: [
            _buildStrategyCard(
              'Journaling',
              'Write down your thoughts and feelings to process and express emotions.',
              Icons.edit,
            ),
            _buildStrategyCard(
              'Reach Out to Friends',
              'Connect with friends or loved ones for support and companionship.',
              Icons.people,
            ),
            _buildStrategyCard(
              'Practice Gratitude',
              'Focus on things you are grateful for to shift your perspective.',
              Icons.favorite,
            ),
            _buildStrategyCard(
              'Mindfulness Meditation',
              'Practice mindfulness to observe and accept your emotions without judgment.',
              Icons.self_improvement,
            ),
            _buildStrategyCard(
              'Listen to Music',
              'Listen to soothing or uplifting music to improve your mood.',
              Icons.music_note,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStrategyCard(String title, String description, IconData iconData) {
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
                color: Colors.blue, // Adjust color as needed
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CalmScreen extends StatelessWidget {
  const CalmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Manage Calmness'),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.w),
        child: ListView(
          children: [
            _buildActivityCard(
              'Deep Breathing',
              'Practice deep breathing exercises to relax your mind and body.',
              Icons.waves,
            ),
            _buildActivityCard(
              'Progressive Muscle Relaxation',
              'Tense and relax different muscle groups to release tension.',
              Icons.accessibility,
            ),
            _buildActivityCard(
              'Nature Walk',
              'Take a calming walk outdoors to enjoy nature and fresh air.',
              Icons.directions_walk,
            ),
            _buildActivityCard(
              'Guided Meditation',
              'Follow guided meditation sessions to achieve mental clarity.',
              Icons.self_improvement,
            ),
            _buildActivityCard(
              'Yoga',
              'Practice yoga poses and stretches to promote relaxation and flexibility.',
              Icons.accessibility_new,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard(String title, String description, IconData iconData) {
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
                color: Colors.green, // Adjust color as needed
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

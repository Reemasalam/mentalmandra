import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AngryScreen extends StatelessWidget {
  const AngryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Manage Anger'),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.w),
        child: ListView(
          children: [
            _buildStrategyCard(
              'Deep Breathing',
              'Take slow, deep breaths to calm down and regain control of your emotions.',
              Icons.waves,
            ),
            _buildStrategyCard(
              'Count to Ten',
              'Count slowly to ten to give yourself time to cool down before reacting.',
              Icons.timer,
            ),
            _buildStrategyCard(
              'Physical Activity',
              'Engage in physical exercise or activity to release pent-up energy and tension.',
              Icons.directions_run,
            ),
            _buildStrategyCard(
              'Mindfulness Meditation',
              'Practice mindfulness techniques to observe and accept your feelings without judgment.',
              Icons.self_improvement,
            ),
            _buildStrategyCard(
              'Use Affirmations',
              'Repeat positive affirmations to shift your mindset and manage negative thoughts.',
              Icons.lightbulb,
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
                color: Colors.red, // Adjust color as needed
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

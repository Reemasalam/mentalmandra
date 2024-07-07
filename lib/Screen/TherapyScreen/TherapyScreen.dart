import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/AnxietyScreen.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/BingeEatingDisorderScreen.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/BipolarDisorderScreen.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/DepressionScreen.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/HyperactivityDisorderScreen.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/InternetAddictionScreen.dart';
import 'package:sizer/sizer.dart';

class TherapyScreen extends StatelessWidget {
  const TherapyScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFED0B2),
        body: Padding(
          padding: EdgeInsets.only(left: 6.w,top:1),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DepressionScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/depression.png',
                        text: " Depression",
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnxietyScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/Anxiety.png',
                        text: "Anxiety",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h), // Adjusted spacing
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bipolardisorderscreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/bipolar.png',
                        text: "Bipolar Disorder",
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InternetAddictionScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/internet.png',
                        text: "Internet Addiction",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HyperactivityDisorderScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/insomia.png',
                        text: "Insomia",
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BingeEatingDisorderScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/binge.png',
                        text: "Binge Eating Disorder",
                      ),
                    ),
                  ],
                ),




                        SizedBox(height: 4.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HyperactivityDisorderScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/panic.png',
                        text: "Panic Disorder",
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BingeEatingDisorderScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/ocd.png',
                        text: "OCD",
                      ),
                    ),
                  ],
                ),
                                  SizedBox(height: 4.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HyperactivityDisorderScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/hyperactivity.png',
                        text: "Hyperactivity Disorder",
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BingeEatingDisorderScreen(),
                          ),
                        );
                      },
                      child: _buildAssessmentButton(
                        imagePath: 'assets/post.png',
                        text: "Post-traumatic stress disorder",
                      ),
                    ),
                  ],
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAssessmentButton({
    required String imagePath,
    required String text,
  }) {
    return Container(
      width: 40.w, // Adjusted width for larger images
      height: 20.h, // Adjusted height for larger images
      decoration: BoxDecoration(
        color: Colors.white, // You can adjust the background color as needed
        borderRadius: BorderRadius.circular(3.w),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3.w),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Ensure the image covers the entire container
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Text(
                text,
                style: GoogleFonts.epilogue(
                  color: Colors.grey.shade700,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

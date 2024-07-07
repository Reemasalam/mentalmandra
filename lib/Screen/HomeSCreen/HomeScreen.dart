import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/AssesmentScreen.dart';
import 'package:mentalmandra/Screen/AssesmentScreen/AssesmentScreen2.dart';
import 'package:mentalmandra/Screen/ChatbotScreen/ChatbotScreen.dart';
import 'package:mentalmandra/Screen/FeelingScreen/AngryScreen.dart';
import 'package:mentalmandra/Screen/FeelingScreen/CalmScreen.dart';
import 'package:mentalmandra/Screen/FeelingScreen/HappyScreen.dart';
import 'package:mentalmandra/Screen/FeelingScreen/SadScreen.dart';
import 'package:mentalmandra/Screen/FunTimeScreen/FunTimeScreen.dart';
import 'package:mentalmandra/Screen/HomeSCreen/EmotionalCrd.dart';
import 'package:mentalmandra/Screen/HomeSCreen/ProfileScreen.dart';
import 'package:mentalmandra/Screen/JournalScreen/JournalScreen.dart';
import 'package:mentalmandra/Screen/MusicScreen/MusicScreen.dart';
import 'package:mentalmandra/Screen/TherapyScreen/TherapyScreen.dart';



import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<List<dynamic>> emotionsList = [
    ["assets/happy.png", "Happy"],
    ["assets/angry.png", "Angry"],
    ["assets/sad.png", "Sad"],
    ["assets/calm.png", "Calm"]
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFED0B2),
        body: Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.w),
                          color: Colors.grey.shade400,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 8.w,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.notifications),
                    SizedBox(width: 4.w),
                  ],
                ),
                SizedBox(height: 4.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: GoogleFonts.epilogue(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  "How are you feeling today?",
                  style: GoogleFonts.epilogue(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8.h),
                // Emotions cards or buttons in a row
                Row(
                  children: emotionsList.map((data) {
                    return InkWell(
                      onTap: () {
                        if (data[1] == "Happy") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HappyScreen(),
                            ),
                          );
                        } else if (data[1] == "Angry") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AngryScreen(),
                            ),
                          );
                        } else if (data[1] == "Sad") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SadScreen(),
                            ),
                          );
                        } else if (data[1] == "Calm") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CalmScreen(),
                            ),
                          );
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: EmotionCard(assetImage: data[0], buttonText: data[1]),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JournalScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 191, 233, 246),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.note_add,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Journal",
                              style: GoogleFonts.epilogue(
                                color: Colors.grey.shade700,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>QuestionnaireScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 193, 235),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.assessment,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Assessment",
                              style: GoogleFonts.epilogue(
                                color: Colors.grey.shade700,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h), // Adjusted spacing
                Row(
                  children: [
                    InkWell(
                    onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MusicScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 197, 151),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.music_note,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Music",
                              style: GoogleFonts.epilogue(
                                color: Colors.grey.shade700,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                    
                             
                        ),
                      ),
                    ),
                           SizedBox(width:5.w),
                                        InkWell(
                      onTap: () {
                             
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TherapyScreen(),
                          ),
                        );
                      
                      },
                      child: Container(
                        width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 140, 230, 186),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.run_circle,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Therapy Session",
                              style: GoogleFonts.epilogue(
                                color: Colors.grey.shade700,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                    
                             
                        ),
                      ),
                    ),
                  ],

                ),
                SizedBox(height:5.h ),
                Row(
                 children: [
                    InkWell(
                      onTap: () {

                           
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FuntimeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 194, 153, 199),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.movie,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "FunTime",
                              style: GoogleFonts.epilogue(
                                color: Colors.grey.shade700,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                    
                             
                        ),
                      ),
                    ),
                           SizedBox(width:5.w),
                                        InkWell(
                      onTap: () {

                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatbotScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 235, 243, 165),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons. chat_bubble_outline,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "ChatBot",
                              style: GoogleFonts.epilogue(
                                color: Colors.grey.shade700,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                    
                             
                        ),
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
}

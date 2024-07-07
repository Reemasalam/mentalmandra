import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class  EmotionCard extends StatelessWidget {
  String assetImage;
  String buttonText;
   EmotionCard({super.key, required this.assetImage, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 6.w),
      child: Column(
                          children: [
                            SizedBox(
                              width:13.5.w,
                              height: 7.2.h,
                              child: Image.asset(assetImage),
                            ),
                            SizedBox(height: 1.h,),
                             Text(buttonText,style: GoogleFonts.epilogue(color:Colors.blueGrey,fontSize: 10.sp,fontWeight: FontWeight.w600, ),),
                         
                          ],
                        ),
    );
  }
}
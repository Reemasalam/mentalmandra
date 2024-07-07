import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileViewScreen extends StatelessWidget {
  ProfileViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFED0B2),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 9.w, bottom: 10.h), // Adjust bottom padding as needed
        child: Column(
          children: [
            SizedBox(height: 8.h),
            ClipOval(
              child: Image.asset(
                'assets/profile.png',
                width: 12.h,
                height: 12.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 6.h),
            _editableText(" Name"),
            
            _editableText("Phone Number"),
            _editableText("Email"),
             _editableText("Age"),
            SizedBox(height: 5.h),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 50.w,
                height: 6.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.w),
                  color: Colors.blue.shade400,
                ),
                child: Text(
                  "Submit",
                  style: GoogleFonts.epilogue(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _editableText(String title) {
    TextEditingController controller = TextEditingController();

    return Container(
      margin: EdgeInsets.only(top: 6),
      width: 80.36.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 1.h),
          TextFormField(
            controller: controller,
            style: GoogleFonts.poppins(
              color: Color(0xff1D2226),
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 4.2.w, vertical: 1.h), // Adjust padding as needed
              filled: true,
              fillColor: Color(0xFFE8ECFF),
            ),
          ),
        ],
      ),
    );
  }
}

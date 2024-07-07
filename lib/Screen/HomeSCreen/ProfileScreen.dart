import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalmandra/Screen/HomeSCreen/ProfileViewScreen.dart';
import 'package:mentalmandra/Screen/SplashScreen.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 30.w,
                height: 30.w,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ProfileViewScreen()));
                    MaterialPageRoute(builder: (context) =>ProfileViewScreen());
                  },
                  child: ClipOval(
                    child: Image.asset(
                            'assets/profile.png',
                            width: 12.h,
                            height: 12.h,
                            fit: BoxFit.cover,
                          )
                       
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
               color: Color(0xFFE8ECFF),
                border: Border.all(
                  color: Color.fromARGB(255, 230, 206, 206),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              padding: EdgeInsets.fromLTRB(8.w, 4.w, 8.w, 4.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        " Name",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: Container()),
                      Text(
                       "Saranya",
                        style: GoogleFonts.epilogue(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                  
                  
                 
                  Row(
                    children: [
                      Text(
                        "Phone Number ",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "9896734810",
                        style: GoogleFonts.lexend(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 6.w,
                  ),
                 
                    Row(
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "saranaya@gmail.com",
                        style: GoogleFonts.lexend(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                    SizedBox(
                    height: 6.w,
                  ),
                  Row(
                    children: [
                      Text(
                        "Age",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "23",
                        style: GoogleFonts.lexend(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            InkWell(
            onTap: () {
               Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen(),
                          ),
                        );
            },
            child: Container(
                width: 50.w,
                height: 5.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.w),color: Colors.blue.shade400),
                child: Text("Logout",style: GoogleFonts.epilogue(color: Colors.white),),
              
              ),
          ),
            SizedBox(
              height: 20,
            )
          ],
        ),
  
    );
  }
}
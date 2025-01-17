// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/Screens/Home/Home.dart';
import 'package:meditation_app/Screens/LoginScreen.dart';
import 'package:meditation_app/Screens/SignUp.dart';
import 'package:meditation_app/Screens/WelcomeScreen.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Image(
                image: AssetImage('assets/greenflower.png'),
              ),
              SizedBox(height: 50.h),
              Image(
                image: AssetImage('assets/halfgirl.png'),
              ),
              SizedBox(height: 30.h),
              Text(
                'Vi er det vi gjør',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xff3f414e),
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  Text(
                    'Tusenvis av mennesker bruker indre ro',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'HelveticaNeue',
                      color: Color(0xffa1a4b2),
                    ),
                  ),
                  Text(
                    'for meditasjon',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'HelveticaNeue',
                      color: Color(0xffa1a4b2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 30.w, right: 30.w, bottom: 20.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpScree()));
                },
                child: Container(
                  height: 50.h,
                  width: 70 * size.width / 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    color: Color(0xff15433b),
                  ),
                  child: Center(
                    child: Text(
                      'MELDE DEG PÅ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'HelveticaNeue',
                        color: Color(0xfff6f1fb),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HAR DU ALLEREDE EN KONTO?',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'HelveticaNeue',
                      color: Color(0xffa1a4b2),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'LOGG INN',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'HelveticaNeue',
                        color: Colors.black,
                      ),
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

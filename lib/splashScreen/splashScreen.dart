import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../customWidget/myText.dart';
import '../onBordingScreen/onBoardingScreen.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Simulate a delay, such as fetching data or performing initial setup
    Timer(const Duration(seconds: 3), () {
    //  Navigate to the home screen after the splash screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBordingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.attach_money,
              color: Colors.white,
              size: 46.sp, // Responsive sizing using Sizer
            ),
            SizedBox(height: 2.0.h),
            myText(
            text:  'Crypto App',
              color: Colors.white,
              size: 10.sp, // Responsive sizing using Sizer
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}

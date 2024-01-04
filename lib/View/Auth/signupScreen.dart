import 'package:crptoproject/customWidget/customElevatedButton.dart';
import 'package:crptoproject/customWidget/customTextFields.dart';
import 'package:crptoproject/customWidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CryptoSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        // color: Colors.blueAccent,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqwEduvDQqffX2of7nLvA1933D-4xSUf7Wxg&usqp=CAU', // Replace with your logo
                height: 14.h,
              ),
              SizedBox(height: 2.h),
              myText(text: 'Crypto App', size: 14.sp),
              SizedBox(height: 4.h),
              customLoginTextField(label: 'Full Name'),
              SizedBox(height: 1.0.h),
              customLoginTextField(label: 'Email'),
              SizedBox(height: 1.0.h),
              customLoginTextField(label: 'phone'),
              SizedBox(height: 1.0.h),
              customLoginTextField(label: 'Password'),
              SizedBox(height: 1.0.h),
              customLoginTextField(label: 'Confirm Password'),
              SizedBox(height: 2.h),
              customElevatedButtton(label: 'Sign Up', onpress: () {}),
              SizedBox(height: 2.h),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: myText(text: 'Login'))
            ],
          ),
        ),
      ),
    );
  }
}

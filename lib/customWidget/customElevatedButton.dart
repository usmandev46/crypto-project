import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:sizer/sizer.dart';


import '../constants/appColors.dart';
import 'myText.dart';

Widget customElevatedButtton(
    {required String label,
    Color? backgroundColor,
    Callback? onpress,
    IconData? prefixIcon,
    double? width,
    bool loading = false,
    String? imageIcon,
    IconData? suffixIcon,
    Color textColor = Colors.white,
    Color prefixIconColor = Colors.white,
    Color suffixIconColor = Colors.white,
    double? fontsize}) {
  return Container(
    width: width ?? double.infinity,
    height: 6.h,
    child: ElevatedButton(
      onPressed: loading ? () {} : onpress,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ??
            AppColors.primaryColor, // Set the background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixIcon == null
              ? const SizedBox()
              : imageIcon != null
                  ? Image.asset(
                      'assets/google.png',
                      height: 2.2.h,
                    )
                  : Icon(prefixIcon, color: prefixIconColor),
          prefixIcon == null ? const SizedBox() : SizedBox(width: 4.w),
          loading
              ? Center(
                  child: CircularProgressIndicator(
                    color: textColor,
                  ),
                )
              : myText(
                  text: label,
                  color: textColor,
                  size: fontsize ?? 12.sp,
                  fontweight: FontWeight.w700),
          suffixIcon == null ? const SizedBox() : SizedBox(width: 4.w),
          suffixIcon == null
              ? const SizedBox()
              : Icon(suffixIcon, color: suffixIconColor),
        ],
      ),
    ),
  );
}

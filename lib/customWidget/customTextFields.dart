import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


import '../constants/appColors.dart';
import 'myText.dart';

Widget customLoginTextField(
    {required String label,
    Widget? prefixIcon,
    bool obscure = false,
      dynamic autofillHints ,
    Widget? sufixIcon,
    TextInputType? keyboard,
    int maxline = 1,
    String? Function(String?)? validator,
    String? Function(String?)? onChange,
    TextEditingController? controller}) {
  return Container(
    margin: EdgeInsets.only(bottom: 2.h),
    // height: validator != null && validator("") != null ? 9.h : 7.h,
    child: TextFormField(
      autofillHints: autofillHints,
      obscureText: obscure,
      controller: controller,
      validator: validator,
      keyboardType: keyboard,
      maxLines: maxline,
      onChanged: onChange,
      decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.1),
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: sufixIcon,
          hintText: label,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0x72090F47),
              fontSize: 11.sp),
          // label: myText(
          //   text: label, color: Color(0x72090F47), size: 11.sp,
          //   fontFamily: 'Arial',
          //   fontweight: FontWeight.w400,
          //   // letterSpacing: -0.24,
          // ),
          border: InputBorder.none,
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20.sp),
              borderSide: BorderSide(color: Colors.transparent)),
          focusedErrorBorder:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(20.sp)),
          errorBorder:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(20.sp)),
          focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20.sp))
      ),
    ),
  );
}

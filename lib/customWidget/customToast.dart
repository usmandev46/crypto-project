import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants/appColors.dart';


showMsgToast({required String message, Color? color}) {
  return Fluttertoast.showToast(
    msg: message,
    backgroundColor: color ?? AppColors.primaryColor,
    textColor: Colors.white,
    gravity: ToastGravity.BOTTOM,
    toastLength: Toast.LENGTH_LONG,
  );
}

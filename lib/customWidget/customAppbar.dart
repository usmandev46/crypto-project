import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../constants/appColors.dart';
import 'backButton.dart';
import 'myText.dart';

Widget customAppBar({String? title}) {
  return Row(children: [
    backButton(),
    SizedBox(width: 5.w),
    myText(
        text: title ?? '',
        color: AppColors.secondaryColor,
        size: 12.sp,
        fontweight: FontWeight.w700)
  ]);
}

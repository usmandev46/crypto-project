import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/appColors.dart';


Widget backButton() {
  return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Icons.arrow_back_outlined,
        color: AppColors.secondaryColor,
      ));
}

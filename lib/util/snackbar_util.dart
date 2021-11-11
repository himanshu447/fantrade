import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_color_util.dart';

class SnackbarUtil {

  static void info({
    required String title,
    required String message,
    Function(dynamic)? onTap,
    Duration duration = const Duration(seconds: 3),
    SnackPosition snackPosition = SnackPosition.BOTTOM,
    Widget? icon,
    Color colorText = Colors.white,
    double borderRadius = 20,
  }) {
    Get.snackbar(
      title,
      message,
      icon: icon,
      snackPosition: snackPosition,
      backgroundColor: AppColor.primaryColor,
      margin: const EdgeInsets.all(15),
      dismissDirection: SnackDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.easeOutBack,
      colorText: colorText,
      borderRadius: borderRadius,
    );
  }


  static void error({
    required String title,
    required String message,
    Function(dynamic)? onTap,
    Duration duration = const Duration(seconds: 3),
    SnackPosition snackPosition = SnackPosition.BOTTOM,
    Widget? icon,
    Color colorText = Colors.white,
    double borderRadius = 20,
  }) {
    Get.snackbar(
        title,
        message,
        icon: icon,
        snackPosition: snackPosition,
        backgroundColor: AppColor.primaryColor,
        margin: const EdgeInsets.all(15),
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.easeOutBack,
        colorText: colorText,
        borderRadius: borderRadius,
    );
  }
}

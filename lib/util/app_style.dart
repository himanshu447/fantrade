import 'package:fantrade/util/app_color_util.dart';
import 'package:flutter/material.dart';

class AppStyleUtil {

  static TextStyle boldTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
          color: color,
        );
  }

  static TextStyle semiBoldTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle blackBoldTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w900,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle extraBoldTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle extraLightTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w200,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle lightTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w300,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle mediumTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle regularTextStyle({required BuildContext context, double fontSize = 18,Color color = AppColor.whiteColor}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color,
    );
  }
}

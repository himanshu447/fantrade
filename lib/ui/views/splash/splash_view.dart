library splash_view;

import 'package:fantrade/ui/views/splash/splash_controller.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:fantrade/util/icon_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'splash_mobile.dart';
part 'splash_tablet.dart';

class SplashView extends StatelessWidget {

  SplashView({Key? key}) : super(key: key);

  final SplashController splashController = Get.find();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _SplashMobile(splashController: splashController),
      tablet: _SplashTablet(splashController: splashController),
    );
  }
}


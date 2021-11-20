library introduction_view;


import 'package:fantrade/ui/views/introduction/introduction_controller.dart';
import 'package:fantrade/ui/views/phone_number/phone_number_view.dart';
import 'package:fantrade/ui/widgets/fantrade_button.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:fantrade/util/icon_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'introduction_mobile.dart';
part 'introduction_tablet.dart';

class IntroductionView extends StatefulWidget {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  State<IntroductionView> createState() => _IntroductionViewState();
}

class _IntroductionViewState extends State<IntroductionView> with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationController1;
  late AnimationController animationController2;
  late AnimationController animationController3;

  late IntroductionController introductionController;

  @override
  void initState() {
    super.initState();
    animationController =  AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animationController1 = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animationController2 = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animationController3 = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    introductionController = IntroductionController(
        animationController: animationController,
        animationController1: animationController1,
        animationController2: animationController2,
        animationController3: animationController3,

    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _IntroductionMobile(introductionController: introductionController,),
      tablet: _IntroductionTablet(),
    );
  }
}

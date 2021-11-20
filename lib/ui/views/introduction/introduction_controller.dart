import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroductionController extends GetxController{
 
  late AnimationController animationController;
  late AnimationController animationController1;
  late AnimationController animationController2;
  late AnimationController animationController3;

  Animation<double>? start;


  IntroductionController({
    required this.animationController,
    required this.animationController1,
    required this.animationController2,
    required this.animationController3,
  }){
    start = Tween(begin: 0.0,end: 1.0).animate(animationController);
    animationController.forward();

    Future.delayed(Duration(milliseconds: 500)).then((value){
      animationController1.forward();
    });

    Future.delayed(Duration(milliseconds: 1000)).then((value){
      animationController2.forward();
    });

    Future.delayed(Duration(milliseconds: 1500)).then((value){
      animationController3.forward();
    });
  }


  @override
  void onInit() {
    super.onInit();

  }
}
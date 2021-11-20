import 'package:fantrade/util/enum_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final AnimationController animationController;
  final TabController starsTabController;

  HomeController({required this.animationController,required this.starsTabController});

  Rx<Tween<Offset>> offset = Tween<Offset>(begin: Offset.zero, end: const Offset(-0.4, -1.2)).obs;

  final Rx<BottomBarItemEnum> _selectedIndex = BottomBarItemEnum.chats.obs;

  final ScrollController controller = ScrollController();

  final Rx<bool> isVisible = true.obs;

  @override
  void onInit(){
    super.onInit();
    controller.addListener(() {
      if(controller.offset > 51){
        isVisible.value = false;
      }else{
        isVisible.value = true;
      }

      if(controller.offset > 45){
        //offset = Tween<Offset>(begin: Offset.zero, end: const Offset(-0.4, -1.2)).animate(animationController);
        print(controller.offset);

        offset.value = Tween<Offset>(
            begin: Offset.zero,
            end: Offset(
                -0.4,
                controller.offset < 48 ? -controller.offset.toDouble() - 30 : -1.2
                ));
        animationController.forward();
      }else{
        offset.value = Tween<Offset>(
            begin: Offset.zero,
            end: Offset(
                -0.4,
                controller.offset > 48 ? -controller.offset.toDouble() - 30 : -1.2
            ));
        animationController.reverse();
      }
    });

    //offset = Tween<Offset>(begin: Offset.zero, end: const Offset(-0.4, -1.2)).animate(animationController);

  }

  BottomBarItemEnum get selectedIndex => _selectedIndex.value;
  set selectedIndex(BottomBarItemEnum value) {
    _selectedIndex.value = value;
    update();
  }
}
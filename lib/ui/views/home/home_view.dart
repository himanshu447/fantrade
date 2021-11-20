library home_view;

import 'package:fantrade/ui/views/home/home_controller.dart';
import 'package:fantrade/ui/views/home/widget/tab1_view.dart';
import 'package:fantrade/ui/views/home/widget/tab2_view.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/enum_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'home_tablet.dart';
part 'home_mobile.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {

  late AnimationController animationController;
  late HomeController homeController;
  late TabController starsTabController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    starsTabController = TabController(length: 3, vsync: this);
    homeController = HomeController(animationController: animationController,starsTabController: starsTabController);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _HomeMobile(homeController: homeController),
      tablet: _HomeTablet(homeController: homeController),
    );
  }
}

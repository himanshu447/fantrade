import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayerDetailController extends GetxController{

  final TabController tabController;
  final tempList = ['1D','2D','1M','6M','YTD','1Y', '5Y' , 'MAX'];


  PlayerDetailController({required this.tabController});
}
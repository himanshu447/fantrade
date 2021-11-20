import 'package:fantrade/ui/widgets/home_player_card_item.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:flutter/material.dart';

import '../home_controller.dart';

class Tab2View extends StatelessWidget {
  final HomeController homeController;
  const Tab2View({Key? key,required this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBarGreyColor,
        elevation: 8,
        title: Text(
            AppString.stars,
            style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 18),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search,color: AppColor.darkGreyColor),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(100.0, 40.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TabBar(
                controller: homeController.starsTabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.primaryColor,
                ),
                labelStyle: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 12),
                unselectedLabelColor: AppColor.darkGreyColor,
                labelColor: AppColor.whiteColor,
                labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.only(bottom: 12),
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text('All'),
                  ),
                  Tab(
                    child: Text('Sports'),
                  ),
                  Tab(
                    child: Text('Bollowood'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 18),
        itemCount: 12,
        itemBuilder: (_,index){
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 170,
            child: const PlayerCardItem(),
          );
        },
      ),
    );
  }
}

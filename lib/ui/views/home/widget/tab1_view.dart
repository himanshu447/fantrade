import 'package:animations/animations.dart';
import 'package:fantrade/ui/views/home/home_controller.dart';
import 'package:fantrade/ui/views/player_detail/player_detail_view.dart';
import 'package:fantrade/ui/widgets/fantrade_button.dart';
import 'package:fantrade/ui/widgets/home_item_live_match_card.dart';
import 'package:fantrade/ui/widgets/home_player_card_item.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tab1View extends StatelessWidget {
  final HomeController homeController;

  const Tab1View({Key? key, required this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: homeController.controller,
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          floating: false,
          pinned: true,
          snap: false,
          stretch: true,
          backgroundColor: AppColor.appBarGreyColor,
          elevation: 8,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12, bottom: 22),
              child: Icon(Icons.notifications,color: AppColor.darkGreyColor,),
            )
          ],
          collapsedHeight: 70,
          toolbarHeight: 50,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsets.symmetric(horizontal: 12),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(TextSpan(
                    text: '${AppString.rsIcon}18,780',
                    style: AppStyleUtil.extraBoldTextStyle(
                      context: context,
                      fontSize: 24,
                    ),
                    children: [
                      TextSpan(
                        text: '.00',
                        style: AppStyleUtil.regularTextStyle(
                          context: context,
                          fontSize: 24,
                          color: AppColor.greyColor,
                        ),
                      ),
                    ])),
                Obx(() {
                  return SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 400),
                            opacity: homeController.isVisible.value ? 1 : 0,
                            child: Row(
                              children: [
                                Text(
                                  'Growth ',
                                  style: AppStyleUtil.regularTextStyle(
                                      context: context,
                                      fontSize: 14,
                                      color: AppColor.darkGreyColor),
                                ),
                                Text(
                                  '${AppString.rsIcon} 4,220.00',
                                  style: AppStyleUtil.boldTextStyle(
                                      context: context,
                                      fontSize: 14,
                                      color: AppColor.greyColor),
                                ),
                                Text(
                                  '.00',
                                  style: AppStyleUtil.regularTextStyle(
                                      context: context,
                                      fontSize: 14,
                                      color: AppColor.greyColor),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 4, right: 2),
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: AppColor.accentColor,
                                    size: 14,
                                  ),
                                ),
                                Text(
                                  '12%',
                                  style: AppStyleUtil.mediumTextStyle(
                                      context: context,
                                      fontSize: 14,
                                      color: AppColor.accentColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SlideTransition(
                          position: homeController.offset.value.animate(homeController.animationController),
                          child: FunTradeButton(
                            label: AppString.addMoney,
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  );
                }),
                const SizedBox(
                  height: 6,
                )
              ],
            ),
            background: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text.rich(TextSpan(
                    text: 'hello, ',
                    style: AppStyleUtil.regularTextStyle(
                        context: context,
                        fontSize: 18,
                        color: AppColor.lightGreyColor),
                    children: [
                      TextSpan(
                          text: 'Ashok',
                          style: AppStyleUtil.boldTextStyle(
                              context: context,
                              fontSize: 18,
                              color: AppColor.lightGreyColor)),
                    ])),
              ),
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 12,),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate((_, index) {
            return OpenContainer(
              key: UniqueKey(),
              tappable: false,
              transitionDuration: const Duration(milliseconds: 700),
              closedColor: AppColor.bgColor,
              closedBuilder: (_,close){
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: 170,
                  child: index == 0
                      ? const HomeLiveMatchCard()
                      : GestureDetector(
                    onTap: (){
                      close();
                    },
                    child: const PlayerCardItem(),
                  ),
                );
              },
              openBuilder: (_,open){
                return const PlayerDetailView();
              },

            );

          }),
        )
      ],
    );
  }
}

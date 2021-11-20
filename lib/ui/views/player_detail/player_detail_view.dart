library player_detail_view;

import 'package:fantrade/ui/views/player_detail/player_detail_controller.dart';
import 'package:fantrade/ui/widgets/fantrade_button.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:fantrade/util/icon_util.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'player_detail_mobile.dart';
part 'player_detail_tablet.dart';

class PlayerDetailView extends StatefulWidget {
  const PlayerDetailView({Key? key}) : super(key: key);

  @override
  State<PlayerDetailView> createState() => _PlayerDetailViewState();
}

class _PlayerDetailViewState extends State<PlayerDetailView> with SingleTickerProviderStateMixin {

  late TabController tabController;
  late PlayerDetailController playerDetailController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    playerDetailController = PlayerDetailController(tabController: tabController);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _PlayerDetailMobile(playerDetailController: playerDetailController,),
      tablet: _PlayerDetailTablet(playerDetailController: playerDetailController),
    );
  }
}

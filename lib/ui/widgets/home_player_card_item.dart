import 'package:fantrade/ui/widgets/fantrade_button.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:fantrade/util/icon_util.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PlayerCardItem extends StatelessWidget {
  const PlayerCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      //color: Colors.transparent,
      color: AppColor.slideGreyColor,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppIcon.icHomeCardBg,
            fit: BoxFit.fill,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12).copyWith(top: 20),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    AppIcon.icHomeMessi,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [

                      Expanded(
                        child: LineChart(
                            LineChartData(
                                backgroundColor: Colors.transparent,
                                borderData: FlBorderData(show: false),
                                gridData: FlGridData(show: false),
                                axisTitleData: FlAxisTitleData(show: false),
                                titlesData: FlTitlesData(show: false),
                                lineBarsData: [
                                  LineChartBarData(
                                      gradientFrom: Offset(0,0),
                                      colors: [
                                        AppColor.yellowColor,
                                        AppColor.accentColor,
                                      ],
                                      dotData: FlDotData(show: false),
                                      spots: [
                                        FlSpot(0, 1),
                                        FlSpot(1, 3),
                                        FlSpot(2, 10),
                                        FlSpot(3, 7),
                                        FlSpot(4, 12),
                                        FlSpot(5, 13),
                                        FlSpot(6, 17),
                                        FlSpot(7, 15),
                                        FlSpot(8, 20)
                                      ]
                                  )
                                ]
                            ),
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),

                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'MESSI',
                                        style: AppStyleUtil.semiBoldTextStyle(
                                            context: context, fontSize: 14),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      const Icon(
                                        Icons.arrow_upward,
                                        color: AppColor.accentColor,
                                      ),
                                      Text(
                                        '18%',
                                        style: AppStyleUtil.semiBoldTextStyle(
                                            context: context,
                                            fontSize: 12,
                                            color: AppColor.accentColor),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4,bottom: 8),
                                    child: Text(
                                      'Lionel Messi',
                                      style: AppStyleUtil.regularTextStyle(
                                          context: context,
                                          fontSize: 12,
                                          color: AppColor.greyColor),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.sports_cricket,
                                        size: 12,
                                        color: AppColor.greyColor,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      const Icon(
                                        Icons.restore_outlined,
                                        size: 12,
                                        color: AppColor.greyColor,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Text(
                                          'MANU',
                                          style: AppStyleUtil.mediumTextStyle(
                                            context: context,
                                            fontSize: 10,
                                            color: AppColor.greyColor,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Forward',
                                        style: AppStyleUtil.mediumTextStyle(
                                          context: context,
                                          fontSize: 10,
                                          color: AppColor.greyColor,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${AppString.rsIcon}580.00',
                                    style: AppStyleUtil.boldTextStyle(
                                      context: context,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  FunTradeButton(
                                    label: AppString.buy,
                                    onPressed: () {},
                                    fillColor: AppColor.accentColor,
                                    padding: EdgeInsets.zero,
                                    radius: 20,
                                    constraints: const BoxConstraints(
                                      minWidth: 58,
                                      minHeight: 36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

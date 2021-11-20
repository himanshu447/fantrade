import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:fantrade/util/icon_util.dart';
import 'package:flutter/material.dart';

class HomeLiveMatchCard extends StatelessWidget {
  const HomeLiveMatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColor.slideGreyColor,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.primaryColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListTile(
                      leading: const Icon(Icons.precision_manufacturing_sharp),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColor.liveMatchColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          AppString.live,
                          style: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 8,),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            children: [
                              Image.asset(
                                AppIcon.icSrh,
                              ),
                              Text(
                                'SRH',
                                style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 10),
                              ),
                            ],
                          ),

                        Column(
                          children: [
                            Text(
                              '141/7',
                              style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 14),
                            ),
                            Text(
                              '(20)',
                              style: AppStyleUtil.regularTextStyle(context: context,fontSize: 10),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              '137/6',
                              style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 14),
                            ),
                            Text(
                              '(20)',
                              style: AppStyleUtil.regularTextStyle(context: context,fontSize: 10),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              AppIcon.icRcb,
                            ),
                            Text(
                              'RCB',
                              style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Text.rich(
                    TextSpan(
                      text: 'SRH Won ',
                      style: AppStyleUtil.boldTextStyle(context: context,fontSize: 10),
                      children: [
                        TextSpan(
                          text: 'by 4 runs',
                          style: AppStyleUtil.regularTextStyle(context: context,fontSize: 10),
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: AppColor.slideGreyColor,
              ),

              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        AppString.tomorrow,
                        style: AppStyleUtil.regularTextStyle(context: context,fontSize: 10),
                      ),
                      subtitle: Text(
                        '7:30 PM IST',
                        style: AppStyleUtil.regularTextStyle(context: context,fontSize: 10),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                AppIcon.icDc,
                              ),
                              Text(
                                'DC',
                                style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 10),
                              ),
                            ],
                          ),

                          Expanded(
                            child: Text(
                              AppString.vs,
                              textAlign: TextAlign.center,
                              style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 14),
                            ),
                          ),

                          Column(
                            children: [
                              Image.asset(
                                AppIcon.icCsk,
                              ),
                              Text(
                                'CSK',
                                style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}

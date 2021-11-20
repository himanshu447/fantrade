part of player_detail_view;

class _PlayerDetailMobile extends StatelessWidget {
  final PlayerDetailController playerDetailController;

  const _PlayerDetailMobile({Key? key,required this.playerDetailController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBarGreyColor,
        elevation: 8,
        title: Text(
          'MESSi',
          style: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 18),
        ),
        actions:  [

          Center(
            child: Text.rich(
              TextSpan(
                text: '${AppString.rsIcon}580',
                style: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 14,),
                children: [
                  TextSpan(
                    text: '.00',
                    style: AppStyleUtil.regularTextStyle(context: context,fontSize: 14,color: AppColor.greyColor)
                  ),
                ]
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16,right: 12,top: 14,bottom: 14),
            child: FunTradeButton(
              label: AppString.buy,
              onPressed: () {},
              fillColor: AppColor.accentColor,
              constraints: const BoxConstraints(
                minHeight: 29,
                minWidth: 50,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: FunTradeButton(
              label: AppString.sell,
              onPressed: () {},
              fillColor: AppColor.liveMatchColor,
              constraints: const BoxConstraints(
                minHeight: 29,
                minWidth: 50,
              ),
            ),
          ),

          const SizedBox(
            width: 12,
          ),

        ],
        bottom: PreferredSize(
          preferredSize: const Size(100.0, 45.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TabBar(
                controller: playerDetailController.tabController,
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
                    child: Text(AppString.overview),
                  ),
                  Tab(
                    child: Text(AppString.language),
                  ),
                  Tab(
                    child: Text(AppString.orders),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppIcon.icDetailBg,
            fit: BoxFit.cover,
          ),

          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
            children: [

              Card(
                color: const Color(0xFF555555).withOpacity(0.6),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 155,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Image.asset(
                          AppIcon.icHomeMessi,
                          fit: BoxFit.fitHeight,
                      ),

                      const SizedBox(
                        width: 12,
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lionel Messi',
                              style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 14),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 12),
                              child:  Row(
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
                              ),
                            ),

                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: '749',
                                    style: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 10,color: AppColor.lightGreyColor),
                                    children: [
                                      TextSpan(
                                        text: AppString.goals,
                                        style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 10,color: AppColor.greyColor)
                                      ),
                                    ]
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '929',
                                      style: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 10,color: AppColor.lightGreyColor),
                                      children: [
                                        TextSpan(
                                            text: AppString.games,
                                            style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 10,color: AppColor.greyColor)
                                        ),
                                      ]
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ),

              Card(
                margin: const EdgeInsets.only(top: 10),
                color: const Color(0xFF555555).withOpacity(0.6),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.only(top: 12),
                  height: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text.rich(
                          TextSpan(
                            text: '${AppString.rsIcon}580',
                            style: AppStyleUtil.extraBoldTextStyle(context: context,fontSize: 18),
                            children: [
                              TextSpan(
                                  text: '.00',
                                  style: AppStyleUtil.regularTextStyle(context: context,fontSize: 18,color: AppColor.greyColor)
                              ),
                            ]
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                        child: Row(
                          children: [
                            const Icon(Icons.arrow_upward,color: AppColor.accentColor,size: 14,),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '18% (+ ₹ 104.4)',
                              style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 12,color: AppColor.accentColor),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Card(
                          color: const Color(0xFF555555).withOpacity(0.7),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          margin: const EdgeInsets.only(top: 12),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12).copyWith(top: 12),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: playerDetailController.tempList.length,
                                    itemBuilder: (_,index){
                                      return  Padding(
                                        padding: const EdgeInsets.only(right: 18),
                                        child: Column(

                                          children: [
                                            Text(
                                              playerDetailController.tempList[index],
                                              style: AppStyleUtil.regularTextStyle(
                                                context: context,
                                                fontSize: 10,
                                                color: index == 0 ? AppColor.yellowColor : AppColor.greyColor,
                                              ),
                                            ),

                                              const Divider(
                                                color: AppColor.yellowColor,
                                                thickness: 5,
                                              )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),

                                Expanded(
                                  child: LineChart(

                                    LineChartData(
                                        borderData: FlBorderData(show: false),
                                        gridData: FlGridData(drawHorizontalLine: true,drawVerticalLine: false),
                                        axisTitleData: FlAxisTitleData(show: false),
                                        titlesData: FlTitlesData(
                                          leftTitles: SideTitles(
                                            showTitles: true,
                                            margin: 16,
                                            getTextStyles: (context, value) => AppStyleUtil.regularTextStyle(
                                                context: context,
                                                color: AppColor.greyColor,
                                                fontSize: 10,
                                            ),
                                          ),
                                          bottomTitles: SideTitles(
                                              showTitles: true,
                                              margin: 16,
                                              getTextStyles: (context, value) => AppStyleUtil.regularTextStyle(
                                              context: context,
                                              color: AppColor.greyColor,
                                              fontSize: 10,
                                            ),
                                          ),
                                          topTitles: SideTitles(showTitles: false),
                                          rightTitles: SideTitles(showTitles: false),
                                        ),
                                        lineTouchData: LineTouchData(enabled: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                              gradientFrom: const Offset(0,0),
                                              colors: [
                                                AppColor.accentColor,
                                              ],
                                              dotData: FlDotData(show: false),
                                              spots: [
                                                FlSpot(0, 19),
                                                FlSpot(1, 32),
                                                FlSpot(2, 10),
                                                FlSpot(3, 17),
                                                FlSpot(4, 12),
                                                FlSpot(5, 13),
                                                FlSpot(6, 17),
                                                FlSpot(7, 15),
                                                FlSpot(8, 20)
                                              ]
                                          ),
                                        ],
                                    ),

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.only(top: 12),
                color: const Color(0xFF555555).withOpacity(0.6),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: const SizedBox(
                  height: 154,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
    getTitles: getTitles,
    showTitles: true,
    interval: 1,

    getTextStyles: (context, value) => const TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );
}

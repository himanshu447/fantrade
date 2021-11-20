part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeController homeController;

  const _HomeMobile({Key? key, required this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: homeController,
      builder: (_) {
        return Scaffold(
          backgroundColor: AppColor.bgColor,
          body: IndexedStack(
            index: homeController.selectedIndex.index,
            children: [

              Tab1View(homeController: homeController,),

              Tab2View(homeController: homeController,),

              Center(child: Text('GHI')),
              Center(child: Text('JKL')),
              Center(child: Text('MNO')),
              Center(child: Text('KKK')),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColor.accentColor,
            unselectedItemColor: AppColor.greyColor,
            backgroundColor: AppColor.appBarGreyColor,
            currentIndex: homeController.selectedIndex.index,
            type: BottomNavigationBarType.shifting,
            onTap: (val){
              homeController.selectedIndex = BottomBarItemEnum.values[val];
            },
            items: BottomBarItemEnum.values.map(
              (e) => BottomNavigationBarItem(
                label: '',
                icon: Icon(
                    e == BottomBarItemEnum.chats
                        ? Icons.insights
                        : e == BottomBarItemEnum.star
                          ? Icons.auto_awesome
                          : e == BottomBarItemEnum.price
                              ? Icons.emoji_events
                              : e == BottomBarItemEnum.cards
                                ? Icons.payment
                                : e == BottomBarItemEnum.profile
                                  ? Icons.person_outline
                                  : Icons.search,
                ),
                backgroundColor: AppColor.appBarGreyColor,
              ),
            ).toList(),
          ),
        );
      }
    );
  }
}

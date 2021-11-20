part of introduction_view;

class _IntroductionMobile extends StatelessWidget {
  final IntroductionController introductionController;
  const _IntroductionMobile({Key? key,required this.introductionController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   // introductionController.animationController.forward();

    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppIcon.icIntroIcon,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 10),
                    child: Text(
                      AppString.buyAndSellYourStar,
                      style: AppStyleUtil.semiBoldTextStyle(context: context,fontSize: 32),
                    ),
                  ),

                  Text(
                    AppString.toEarnRealMoney,
                    textAlign: TextAlign.start,
                    style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 16,color: AppColor.greyColor),
                  ),

                ],
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height / 3.2,
              left: MediaQuery.of(context).size.shortestSide / 2.1,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0,end: 1).animate(introductionController.animationController),
                child: Image.asset(
                  AppIcon.icStartMessi,
                  scale: 1.3,
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              left: 30,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0,end: 1).animate(introductionController.animationController1),
                child: Image.asset(
                  AppIcon.icStartDhoni,
                  scale: 1.3,
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height/ 2.8,
              left: 0,
              right: 0,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0,end: 1).animate(introductionController.animationController2),
                child: Image.asset(
                  AppIcon.icStartVirat,
                  scale: 1.1,
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height/ 2.2,
              right: 30,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0,end: 1).animate(introductionController.animationController3),
                child: Image.asset(
                  AppIcon.icStartRonaldo,
                  scale: 1.1,
                ),
              ),
            ),

            Positioned(
              bottom: 50,
              left: 30,
              child: FunTradeButton(
                label: AppString.getStarted,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                radius: 20,
                onPressed: (){
                  Get.off(PhoneNumberView());
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}

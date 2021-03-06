part of splash_view;


class _SplashMobile extends StatelessWidget {
  final SplashController splashController;

  const _SplashMobile({Key? key, required this.splashController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Center(
        child: Image.asset(AppIcon.icAppIcon),
      ),
    );
  }
}

library introduction_view;


import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'introduction_mobile.dart';
part 'introduction_tablet.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _IntroductionMobile(),
      tablet: _IntroductionTablet(),
    );
  }
}

library verification_view;
import 'package:fantrade/ui/views/home/home_view.dart';
import 'package:fantrade/ui/views/verification/verification_controller.dart';
import 'package:fantrade/ui/widgets/fantrade_button.dart';
import 'package:fantrade/util/app_color_util.dart';
import 'package:fantrade/util/app_string_util.dart';
import 'package:fantrade/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_builder/responsive_builder.dart';
part 'verification_mobile.dart';
part 'verification_tablet.dart';

class VerificationView extends StatelessWidget {
  VerificationView({Key? key}) : super(key: key);

  final VerificationController verificationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _VerificationMobile(verificationController: verificationController),
      tablet: _VerificationTablet(verificationController: verificationController),
    );
  }
}

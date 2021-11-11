library phone_number_view;

import 'package:fantrade/ui/views/phone_number/phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'phone_number_mobile.dart';
part 'phone_number_tablet.dart';

class PhoneNumberView extends StatelessWidget {
  PhoneNumberView({Key? key}) : super(key: key);

  final PhoneNumberController phoneNumberController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _PhoneNumberMobile(phoneNumberController: phoneNumberController),
      tablet: _PhoneNumberTablet(phoneNumberController: phoneNumberController),
    );
  }
}

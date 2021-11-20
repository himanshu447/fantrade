import 'package:fantrade/ui/views/introduction/introduction_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController() {
    navigation();
  }

  navigation() async {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.off(const IntroductionView());
    });
  }
}

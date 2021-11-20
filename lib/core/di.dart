import 'package:fantrade/core/services/shared_preference_service.dart';
import 'package:fantrade/ui/views/home/home_controller.dart';
import 'package:fantrade/ui/views/introduction/introduction_controller.dart';
import 'package:fantrade/ui/views/phone_number/phone_number_controller.dart';
import 'package:fantrade/ui/views/splash/splash_controller.dart';
import 'package:fantrade/ui/views/verification/verification_controller.dart';
import 'package:get/get.dart';

class Di {
  static initServices() async{

    //Initialzed
    Get.putAsync(() => SharedPreferencesService.getInstance());
    await Future.delayed(const Duration(seconds: 1));


    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => PhoneNumberController());
    Get.lazyPut(() => VerificationController());

  }
}

import 'package:fantrade/core/services/shared_preference_service.dart';
import 'package:get/get.dart';

class Di {
  static initServices() async{

    //Initialzed
    Get.putAsync(() => SharedPreferencesService.getInstance());
    await Future.delayed(const Duration(seconds: 1));



  }
}

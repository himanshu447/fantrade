import 'dart:async';

import 'package:get/get.dart';

class VerificationController extends GetxController{

  late Timer _timer;
  final RxInt start = 60.obs;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start.value == 0) {
            timer.cancel();
        } else {
            start.value--;
        }
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


}

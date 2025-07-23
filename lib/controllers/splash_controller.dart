import 'package:get/get.dart';
import 'package:momind/routes/appRoutes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.home);
    });
  }
}
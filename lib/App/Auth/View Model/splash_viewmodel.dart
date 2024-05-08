
import 'package:assignments_1/Utils/Routes/app_routes.dart';
import 'package:get/get.dart';


class SplashViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.onBoarding1View);
    });
  }
}
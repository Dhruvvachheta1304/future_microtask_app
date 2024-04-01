import 'package:future_microtask_app/Routes/route_name.dart';
import 'package:get/get.dart';

class SplashViewController extends GetxController {
  void splashView() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(AppRouteName.homeView),
    );
  }
}

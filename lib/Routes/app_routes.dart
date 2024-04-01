import 'package:future_microtask_app/Routes/route_name.dart';
import 'package:future_microtask_app/screens/home_view.dart';
import 'package:future_microtask_app/screens/splash_view.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: AppRouteName.splashView,
        page: () => const SplashView(),
      ),
      GetPage(
        name: AppRouteName.homeView,
        page: () => const HomeView(),
      ),
    ];

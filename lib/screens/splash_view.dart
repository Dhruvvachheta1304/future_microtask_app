import 'package:flutter/material.dart';
import 'package:future_microtask_app/controller/splash_view_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashViewController splashViewController = SplashViewController();
  @override
  void initState() {
    super.initState();
    splashViewController.splashView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

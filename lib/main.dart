import 'package:flutter/material.dart';
import 'package:future_microtask_app/Routes/app_routes.dart';
import 'package:future_microtask_app/Routes/route_name.dart';
import 'package:future_microtask_app/components/no_page_found.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Future MicroTask Demostrate',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      getPages: appRoutes(),
      initialRoute: AppRouteName.splashView,
      unknownRoute: GetPage(name: '/', page: () => const NoPageFoundView()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  final RxBool _simpleFuture = false.obs;
  final RxBool _futureDelayed = false.obs;
  final RxBool _futureMicrotask = false.obs;

  bool get simpleFuture => _simpleFuture.value;
  bool get futureDelayed => _futureDelayed.value;
  bool get futureMicroTask => _futureMicrotask.value;

  void futureFunction() async {
    // Second Priority
    Future(() {
      _simpleFuture.value = true;
      debugPrint("Print 01 $simpleFuture");
    });

    //Third Priority
    Future.delayed(const Duration(seconds: 2), () {
      _futureDelayed.value = true;
      debugPrint("print 02 $futureDelayed");
    });

    //First Priority
    Future.microtask(() {
      _futureMicrotask.value = true;
      debugPrint("print 03 $futureMicroTask");
    });
  }

  void resetFuture() {
    _simpleFuture.value = false;
    _futureDelayed.value = false;
    _futureMicrotask.value = false;
  }
}

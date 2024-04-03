import 'package:flutter/material.dart';
import 'package:future_microtask_app/controller/home_view_controller.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewController homeviewController = HomeViewController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.indigo[400],
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text(
          "Future MicroTask Demo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('data'),
            Obx(
              () => Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: Get.height * 0.1,
                        decoration: BoxDecoration(color: Colors.red[200], borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "Please see the print statement in console",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w700, color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    const Gap(10.0),
                    Visibility(
                        visible: homeviewController.simpleFuture,
                        child: Container(
                            alignment: Alignment.center,
                            height: Get.height * 0.15,
                            width: Get.width,
                            decoration: BoxDecoration(color: Colors.blueGrey[200], borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "Simple Future Function called \n Function Name : Future();",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w700, color: Colors.grey[700]),
                            ))),
                    const Gap(10),
                    Visibility(
                        visible: homeviewController.futureDelayed,
                        child: Container(
                            alignment: Alignment.center,
                            height: Get.height * 0.15,
                            width: Get.width,
                            decoration: BoxDecoration(color: Colors.blue[200], borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "Future Delayed Function Called \n Function Name : Future.microtask();",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w700, color: Colors.grey[700]),
                            ))),
                    const Gap(10),
                    Visibility(
                        visible: homeviewController.futureMicroTask,
                        child: Container(
                            alignment: Alignment.center,
                            height: Get.height * 0.15,
                            width: Get.width,
                            decoration: BoxDecoration(color: Colors.deepPurple[200], borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "Future Micro Task Function Called \n Function Name : Future.microtask();",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w700, color: Colors.grey[700]),
                            ))),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      homeviewController.futureFunction();
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(Get.width, Get.height * 0.07),
                        backgroundColor: Colors.indigo[400],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                    icon: const Icon(
                      Icons.touch_app_outlined,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Future Function List",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    )),
                const Gap(10.0),
                ElevatedButton.icon(
                    onPressed: () {
                      homeviewController.resetFuture();
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(Get.width, Get.height * 0.07),
                        backgroundColor: Colors.indigo[400],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                    icon: const Icon(
                      Icons.restore,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Reset",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    )),
                // const Gap(20),
              ],
            )

            // Text("data"),
            // Text("data"),
            // Text("data"),
            // Text("data"),
          ],
        ),
      )),
    );
  }
}

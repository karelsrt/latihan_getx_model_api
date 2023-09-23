import 'package:flutter/material.dart';
import 'package:latihan_getx/core.dart';
import '../controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Get.to(
                          () => const ReadapiView(),
                        );
                      },
                      child: const Text("Read API Tanpa Model"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Get.to(
                          () => const ReadapimodelView(),
                        );
                      },
                      child: const Text(" Baca Api dengan model"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

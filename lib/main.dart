import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx/module/home/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todo_getx/pages/HomePage.dart';
import 'package:todo_getx/pages/button.dart';
import 'package:todo_getx/theme/themeController.dart';

void main() {
  final themeController = Get.put(ThemeController());

  runApp(
    Obx(() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeController.currentTheme.value,
      home: Homepage(),
    )),
  );
}



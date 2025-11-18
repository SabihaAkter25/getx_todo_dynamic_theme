import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dark_theme.dart';
import 'soft_theme.dart';
import 'indigo_theme.dart';

class ThemeController extends GetxController {
  Rx<ThemeData> currentTheme = darkTheme.obs;

  void setDarkTheme() {
    currentTheme.value = darkTheme;
  }

  void setSoftTheme() {
    currentTheme.value = softMinimalTheme;
  }

  void setIndigoTheme() {
    currentTheme.value = indigoTheme;
  }
}

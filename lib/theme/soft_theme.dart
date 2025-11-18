import 'package:flutter/material.dart';

ThemeData softMinimalTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xFFF5F5F5),
  cardColor: Colors.white,
  primaryColor: Color(0xFF009688),
  colorScheme: ColorScheme.light(
    primary: Color(0xFF009688),
    secondary: Color(0xFF4DB6AC),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF212121)),
    bodyMedium: TextStyle(color: Color(0xFF424242)),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF009688)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF009688),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
    ),
  ),
);

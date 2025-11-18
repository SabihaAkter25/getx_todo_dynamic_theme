import 'package:flutter/material.dart';

ThemeData indigoTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xFFF5F5F5),
  cardColor: Colors.white,
  primaryColor: Color(0xFF3F51B5),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF3F51B5),
    secondary: Color(0xFFFFC107),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF212121)),
    bodyMedium: TextStyle(color: Color(0xFF424242)),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF3F51B5)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF3F51B5),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
    ),
  ),
);

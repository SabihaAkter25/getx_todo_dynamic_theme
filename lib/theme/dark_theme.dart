import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF1E1E1E),
  cardColor: Color(0xFF2A2A2A),
  primaryColor: Color(0xFF00B0FF),
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF00B0FF),
    secondary: Color(0xFFD500F9),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white70),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF00B0FF)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF00B0FF),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
    ),
  ),
);

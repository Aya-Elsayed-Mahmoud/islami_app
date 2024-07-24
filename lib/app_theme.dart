import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightprimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color gold = Color(0xFFFACC1D);
  static const Color white = Color(0xFFF8F8F8);
  static const Color black = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.amber,
        selectedItemColor: Colors.black,
      ));
  static ThemeData darkTheme = ThemeData();
}

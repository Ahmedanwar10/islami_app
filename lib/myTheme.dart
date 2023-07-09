import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 25,
      ),
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: lightPrimary,
      selectedIconTheme: const IconThemeData(
        color: Colors.black,
        size: 36,
      ),
      selectedLabelStyle: const TextStyle(
        color: Colors.black,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
        size: 24,
      ),
      // unselectedLabelStyle:
    ),
  );
  static ThemeData darkTheme = ThemeData();
}

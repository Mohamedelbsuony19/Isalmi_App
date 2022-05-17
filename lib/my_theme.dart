import 'package:flutter/material.dart';

class myThme {
  static Color gold = Color(0xFFB7935F);
  static Color black = Color(0xFF242424);
  static Color goldDark = Color(0xFFFACC1D);
  static Color Darkpri = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(

      primaryColor: gold,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: black)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: black, fontWeight: FontWeight.bold),
           subtitle1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: black, unselectedItemColor: Colors.white));

  static final ThemeData DarkTheme = ThemeData(
      primaryColor: Darkpri,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: goldDark)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: goldDark, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: goldDark)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: goldDark, unselectedItemColor: Colors.white));
}

import 'package:flutter/material.dart';

class Constants {
  // static Color lightPrimary = Color(0xFF0067C4);
  static Color lightPrimary = Color(0xFF000000);
  static Color lightAccent = Color(0xFF00A4FF);
  static Color darkPrimary = Color(0xFFFFFFFF);
  static Color darkAccent = Color(0xFFFFFFFF);
  static Color lightBG = Colors.white;
  static Color darkBG = Color(0xFF030A10);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      accentColor: lightAccent,
      brightness: Brightness.light,
      scaffoldBackgroundColor: lightBG,
      canvasColor: lightBG,
      bottomAppBarTheme: BottomAppBarTheme(color: lightBG, elevation: 0.0),
      appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: lightPrimary,
        ),
        color: lightBG,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: lightPrimary),
        textTheme:
            TextTheme(title: TextStyle(color: lightPrimary, fontSize: 20)),
        elevation: 0.0,
      ),
      fontFamily: 'Poppins');

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimary,
      accentColor: darkAccent,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBG,
      backgroundColor: darkBG,
      canvasColor: darkBG,
      cardColor: Color(0xFF5B5B5B),
      bottomAppBarTheme: BottomAppBarTheme(
        color: darkBG,
        elevation: 0.0,
      ),
      appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: darkPrimary,
        ),
        color: darkBG,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: darkPrimary),
        textTheme: TextTheme(
          title: TextStyle(color: darkPrimary, fontSize: 20),
        ),
        elevation: 0.0,
      ),
      fontFamily: 'Poppins');
}

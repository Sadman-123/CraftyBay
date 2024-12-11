import 'package:craftybay/presentation/ui/stylesheet/colors.dart';
import 'package:flutter/material.dart';
ThemeData LightTheme()
{
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Scaffold_color,
    appBarTheme: AppBarTheme(
      color: Scaffold_color
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(14),
      border: OutlineInputBorder(
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF2ebbbb)
        )
      ),
      hintStyle: TextStyle(
        color: Color(0xFFc5c5c4)
      ),
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      backgroundColor: Scaffold_color,
      selectedIconTheme: IconThemeData(
        color: Cursor_color
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Cursor_color,
      unselectedItemColor: Color(0xFFc6c7c6),
      unselectedLabelStyle: TextStyle(
        color: Color(0xFFc9c8c8)
      ),
      unselectedIconTheme: IconThemeData(color: Color(0xFF818181)),
      selectedLabelStyle: TextStyle(
        color: Cursor_color,
      )
    ),
    fontFamily: "gfont"
  );
}
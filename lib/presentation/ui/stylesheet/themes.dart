import 'package:flutter/material.dart';
import 'colors.dart';
class AppThemes {
  static ThemeData get LightTheme{
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.Scaffold_color,
        appBarTheme: AppBarTheme(
            color:  AppColors.Scaffold_color
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
            backgroundColor:  AppColors.Scaffold_color,
            selectedIconTheme: IconThemeData(
                color: AppColors.Cursor_color
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.Cursor_color,
            unselectedItemColor: Color(0xFFc6c7c6),
            unselectedLabelStyle: TextStyle(
                color: Color(0xFFc9c8c8)
            ),
            unselectedIconTheme: IconThemeData(color: Color(0xFF818181)),
            selectedLabelStyle: TextStyle(
              color: AppColors.Cursor_color,
            )
        ),
        fontFamily: "gfont"
    );
  }
  static ThemeData get DarkTheme{
    return ThemeData(
      brightness: Brightness.dark
    );
  }
}
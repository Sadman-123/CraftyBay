import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
Color Scaffold_color=Color(0xFFfffefe);
Color Cursor_color=Color(0xFF2ebbbb);
Color Registration_Button_Color=Color(0xFF06afaf);
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
TextStyle Version_Txt()
{
  return TextStyle(fontFamily: "gfont",color: Color(0xFFa8a9a9));
}
TextStyle Complete_Profile_Txt(double mdw)
{
  return TextStyle(fontSize: mdw*0.078,color: Color(0xFF515051));
}
TextStyle SubTxt1(double mdw)
{
  return TextStyle(color: Color(0xFF989999),fontSize: mdw*0.039);
}
TextStyle Registration_Button_Txt(double mdw)
{
  return TextStyle(color: Colors.white,fontSize: mdw*0.045);
}
PinTheme pin_code_theme(double mdw,double mdh)
{
  return PinTheme(
    height: mdh*0.063,
    width: mdw*0.14,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Cursor_color),
    ),
  );
}
TextStyle Rich_Txt_1(double mdw)
{
  return TextStyle(
      color: Color(0xFF989999),
      fontSize: mdw*0.041
  );
}
TextStyle Resend_Txt(double mdw)
{
  return  TextStyle(color: Color(0xFF989999),fontSize: mdw*0.041);
}
import 'package:flutter/material.dart';
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
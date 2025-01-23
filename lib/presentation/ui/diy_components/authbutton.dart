import 'package:flutter/material.dart';
import '../stylesheet/colors.dart';
import '../stylesheet/widgets_style.dart';
Widget Authbutton(double mdw,double mdh,VoidCallback onpressed,{required String Buttontxt}) {
  return GestureDetector(
    onTap: onpressed,
    child: Container(
      decoration: BoxDecoration(
          color: AppColors.Registration_Button_Color,
          borderRadius: BorderRadius.circular(14)
      ),
      child: Center(child: Text("$Buttontxt",style: WidgetsStyle.Registration_Button_Txt(mdw),)),
      width: mdw*0.83,
      height: mdh*0.06,
    ),
  );
}
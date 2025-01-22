import 'package:flutter/material.dart';

import '../../stylesheet/colors.dart';
import '../../stylesheet/widgets_style.dart';
Widget LinkSigninup(double mdw,double mdh,VoidCallback onpressed,{required String txt1,required String txt2}) {
  return  Container(
    child: InkWell(
      onTap: onpressed,
      child: RichText(
        text: TextSpan(
            style: WidgetsStyle.Rich_Txt_1(mdw),
            children: [
              TextSpan(text: "$txt1"),
              TextSpan(text: " "),
              TextSpan(text: "$txt2",style: TextStyle(color: AppColors.Registration_Button_Color,fontWeight: FontWeight.bold))
            ]
        ),
      ),
    ),
  );
}
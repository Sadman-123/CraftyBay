import 'package:flutter/material.dart';
Widget HeadingTitle({required double mdw,required String title,required VoidCallback onseeAllTap}){
  return  Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$title",style: TextStyle(color: Color(0xFF515150),fontWeight: FontWeight.bold,fontSize: mdw*0.06),),
        InkWell(onTap:(){onseeAllTap();},child: Text("See All",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.045),))
      ],
    ),
  );
}
import 'package:flutter/material.dart';
Widget CategoryCard({required double mdw,required String category_title,required Widget category_icon}) {
  return Container(
    child: Container(
      child: Column(
        children: [
          Container(
            child: category_icon,
            decoration: BoxDecoration(
                color: Color(0xFFe6f7f6),
                borderRadius: BorderRadius.circular(14)
            ),
            padding: EdgeInsets.all(15),
          ),
          Container(child: Text("$category_title",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
        ],
      ),
    ),
    margin: EdgeInsets.all(5),
  );
}
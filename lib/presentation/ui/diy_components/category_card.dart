import 'package:flutter/material.dart';
Widget CategoryCard({required double mdw,required String category_title,required String category_pic}) {
  return Container(
    child: Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFf2f2f2)
            ),
            height: mdw*0.2,
            width: mdw*0.3,
            child: Image.network("$category_pic"),
            padding: EdgeInsets.all(15),
          ),
          Container(child: Text("$category_title",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
        ],
      ),
    ),
    margin: EdgeInsets.all(5),
  );
}
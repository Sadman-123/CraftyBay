import 'package:craftybay/home_screens/controllers/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
Widget Product_Card({required BuildContext context,required double mdh,required double mdw,required String product_pic,required String product_title,required String product_price,required String product_rating,required VoidCallback onLike})
{
  Homecontroller home=Get.find();
  return GestureDetector(
    onTap: (){
      Get.toNamed('/product_details',arguments:{
        'product_pic':product_pic,
        'product_title':product_title,
        'product_price':product_price,
        'product_rating':product_rating
      } );
    },
    child: Card(
      color: Color(0xFFfffefe),
      margin: EdgeInsets.only(
        left: 13,
        bottom: 5
      ),
      child: Container(
        height: mdh*0.22,
        width: mdw*0.45,
        child: Column(
          children: [
            Expanded(flex: 2,child: Container(width: double.infinity,decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Hero(tag: "$product_pic",child: Image.asset('$product_pic',width: mdw*0.5,)),),)),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(child: Text("$product_title",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$$product_price",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                  children: [
                                    TextSpan(text: "⭐"),
                                    TextSpan(text: "$product_rating")
                                  ]
                              ),
                            ),
                            InkWell(onTap:(){onLike();},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFFfefffe),),))
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    ),
  );
}
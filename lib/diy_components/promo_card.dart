import 'package:flutter/material.dart';
Widget Banner_Card(double mdw,double mdh,{required String promotionitempic,required String promotiontxt})
{
  return Container(
    margin: EdgeInsets.all(10),
    width: double.infinity,
    height: mdh*0.25,
    decoration: BoxDecoration(
        color: Color(0xFF07afae),
        borderRadius: BorderRadius.vertical(top: Radius.circular(14),bottom: Radius.circular(14))
    ),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Center(
              child: Image.asset("$promotionitempic",width: mdw*0.43,),
            ),),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
              children: [
                Expanded(flex: 2,child: Center(child: Text("$promotiontxt",style: TextStyle(fontSize: mdw*0.065,color: Color(0xFFfefffe),fontWeight: FontWeight.bold),maxLines: 3,overflow: TextOverflow.ellipsis,))),
                Expanded(child: InkWell(
                  onTap: (){},
                  child: Container(child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFfefffe),
                          borderRadius: BorderRadius.circular(11)
                      ),
                      margin: EdgeInsets.all(5),
                      width: mdw*0.26,
                      child: Center(
                        child: Text("Buy Now",style: TextStyle(color: Color(0xFF1bb4b5)),),
                      ),
                      height: mdh*0.06,
                    ),
                  ),),
                ))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
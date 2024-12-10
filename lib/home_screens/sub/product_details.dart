import 'package:craftybay/home_screens/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ProductDetails extends StatelessWidget{
  ProductController product=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    final data = Get.arguments;
    final String productPic = data['product_pic'];
    final String productTitle = data['product_title'];
    final String productPrice = data['product_price'];
    final String productRating = data['product_rating'];
    product.setProductPrice(double.parse(productPrice));
   return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Row(
         children: [
           IconButton(onPressed: (){Navigator.pop(context);product.clearcal();}, icon: Icon(CupertinoIcons.chevron_left,color: Color(0xFF010001),)),
           SizedBox(width: mdw*0.025,),
           Text("Product Details",style: TextStyle(color: Color(0xFF515051)),),
         ],
       ),
     ),
     body: Container(
       padding: EdgeInsets.only(
         left: 10,
         right: 10,
         top: 10
       ),
       child: Column(
         children: [
           Expanded(flex: 3,child: Container(
             color: Color(0xFFe6f7f6),
             child: Center(
               child: Hero(tag: "$productPic",child: Image.asset('$productPic')),
             ),
           )),
           SizedBox(height: mdh*0.007,),
           Expanded(flex: 4,child: SingleChildScrollView(
             child: Container(
               width: double.infinity,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Expanded(child: Container(child: Text("$productTitle",style: TextStyle(fontSize: mdw*0.067,color: Color(0xFF666767)),maxLines: 2,overflow: TextOverflow.ellipsis,))),
                         Container(
                           child: Row(
                             children: [
                               GestureDetector(
                                 onTap: (){product.increase_product();},
                                 child: Container(
                                   child: Icon(Icons.add,color: Color(0xFFfefffe),),
                                   decoration: BoxDecoration(
                                     color: Color(0xFF07afae),
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                   padding: EdgeInsets.all(3),
                                 ),
                               ),
                               SizedBox(width: mdw*0.03,),
                               Obx(()=>Text("${product.qty.value}",style: TextStyle(fontSize: mdw*0.079),)),
                               SizedBox(width: mdw*0.03,),
                               GestureDetector(
                                 onTap: (){product.decrease_product();},
                                 child: Container(
                                   child: Icon(Icons.remove,color: Color(0xFFfefffe)),
                                   decoration: BoxDecoration(
                                       color: Color(0xFF07afae),
                                       borderRadius: BorderRadius.circular(5)
                                   ),
                                   padding: EdgeInsets.all(3),
                                 ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                   SizedBox(height: mdh*0.002,),
                   Container(
                     width: mdw*0.5,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: RichText(
                             text: TextSpan(
                               style: TextStyle(fontSize: mdw*0.055,color: Color(0xFf696969)),
                               children: [
                                 TextSpan(text: "⭐"),
                                 TextSpan(text: "$productRating")
                               ]
                             ),
                           ),
                         ),
                         Container(child: Text("Reviews",style: TextStyle(fontSize: mdw*0.050,color: Color(0xFF07afae)),),),
                         Container(child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),),)
                       ],
                     ),
                   ),
                   SizedBox(height: mdh*0.002,),
                   Container(
                     width: mdw*0.5,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Color",style: TextStyle(fontSize: mdw*0.065,color: Color(0xFF666767)),),
                         Container(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Colorbox(mdh: mdh, mdw: mdw, clr: Color(0xFF202120), onclick: (){}),
                               Colorbox(mdh: mdh, mdw: mdw, clr: Color(0xFF0e99b0), onclick: (){}),
                               Colorbox(mdh: mdh, mdw: mdw, clr: Color(0xFF7a5449), onclick: (){}),
                               Colorbox(mdh: mdh, mdw: mdw, clr: Color(0xFFd9d9d9), onclick: (){}),
                               Colorbox(mdh: mdh, mdw: mdw, clr: Color(0xFF757575), onclick: (){}),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: mdh*0.002,),
                   Container(
                     width: mdw*0.5,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Size",style: TextStyle(fontSize: mdw*0.065,color: Color(0xFF666767)),),
                         Container(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               MySizeBox(mdw: mdw, mdh: mdh, size: 'X', onclick: (){}),
                               MySizeBox(mdw: mdw, mdh: mdh, size: 'XL', onclick: (){}),
                               MySizeBox(mdw: mdw, mdh: mdh, size: '2L', onclick: (){}),
                               MySizeBox(mdw: mdw, mdh: mdh, size: 'M', onclick: (){}),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: mdh*0.002,),
                   Container(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Description",style: TextStyle(fontSize: mdw*0.065,color: Color(0xFF666767)),),
                         Container(
                           child: Text("3e3eijir3ijr33333333rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr",style: TextStyle(fontSize: mdw*0.049,color: Color(0xFF919b91)),),
                         )
                       ],
                     ),
                   )
                 ],
               ),
             ),
           )
           ),
           Expanded(child:
           Container(
             child: Container(
               decoration: BoxDecoration(
                 color: Color(0xFFe6f6f7),
                 borderRadius: BorderRadius.vertical(top: Radius.circular(30))
               ),
               child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       child: Column(
                         children: [
                           Text("Price",style: TextStyle(color: Color(0xFF666767),fontSize: mdw*0.045),),
                           Obx(()=>Text("${product.totalPrice}\$",style: TextStyle(color: Color(0xFF0caeb1),fontSize: mdw*0.059),))
                         ],
                         crossAxisAlignment: CrossAxisAlignment.start,
                       ),
                       padding: EdgeInsets.all(10),
                     ),
                   ),
                   Expanded(child: Container(
                     padding: EdgeInsets.all(10),
                     child: Container(
                       decoration:BoxDecoration(
                         color:Color(0xFF07afae),
                       borderRadius: BorderRadius.circular(14)
                     ),width: mdw*0.83,
                       height: mdh*0.06,child: Center(child: Text("Add To Cart",style: TextStyle(color: Color(0xFFfffefe),fontSize: mdw*0.045),),),),
                   ))
                 ],
               ),
             ),
           )),
         ],
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house),label: "Home"),
         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cubes),label: "Category"),
         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.basketShopping),label: "Cart"),
         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.gift),label: "Wish"),
       ],
     ),
   );
  }
  Widget Colorbox({required double mdh,required double mdw,required Color clr,required VoidCallback onclick})
  {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        height:mdh*0.085,
        width:mdw*0.085,
        decoration: BoxDecoration(
          color: clr,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
Widget MySizeBox({required double mdw,required double mdh,required String size,required VoidCallback onclick})
{
  return GestureDetector(
    onTap: onclick,
    child: Container(
      height:mdh*0.085,
      width:mdw*0.085,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFF767776))
      ),
      child: Center(child: Text('${size}',style: TextStyle(fontSize: mdw*0.045),)),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ProductDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final String productPic = args?['product_pic'] ?? '';
    final String productTitle = args?['product_title'] ?? '';
    final String productPrice = args?['product_price'] ?? '';
    final String productRating = args?['product_rating'] ?? '';
   return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Row(
         children: [
           IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(CupertinoIcons.chevron_left,color: Color(0xFF010001),)),
           SizedBox(width: mdw*0.025,),
           Text("Product Details",style: TextStyle(color: Color(0xFF515051)),),
         ],
       ),
     ),
     body: Container(
       padding: EdgeInsets.all(10),
       child: Column(
         children: [
           Expanded(flex: 3,child: Container(
             color: Color(0xFFf3f2f2),
             child: Center(
               child: Hero(tag: "$productPic",child: Image.asset('$productPic')),
             ),
           )),
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
                               Container(
                                 child: Icon(Icons.add),
                                 decoration: BoxDecoration(
                                   color: Color(0xFF07afae)
                                 ),
                                 padding: EdgeInsets.all(3),
                               ),
                               SizedBox(width: mdw*0.03,),
                               Text("0",style: TextStyle(fontSize: mdw*0.079),),
                               SizedBox(width: mdw*0.03,),
                               Container(
                                 child: Icon(Icons.remove),
                                 decoration: BoxDecoration(
                                     color: Color(0xFF07afae)
                                 ),
                                 padding: EdgeInsets.all(3),
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
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                   color: Color(0xFF202120),
                                   shape: BoxShape.circle,
                                 ),
                               ),
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                   color: Color(0xFF0e99b0),
                                   shape: BoxShape.circle,
                                 ),
                               ),
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                   color: Color(0xFF7a5449),
                                   shape: BoxShape.circle,
                                 ),
                               ),
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                   color: Color(0xFFd9d9d9),
                                   shape: BoxShape.circle,
                                 ),
                               ),
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                   color: Color(0xFF757575),
                                   shape: BoxShape.circle,
                                 ),
                               ),
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
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color: Color(0xFF767776))
                                 ),
                                 child: Center(child: Text('X',style: TextStyle(fontSize: mdw*0.045),)),
                               ),
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     border: Border.all(color: Color(0xFF767776))
                                 ),
                                 child: Center(child: Text('XL',style: TextStyle(fontSize: mdw*0.045),)),
                               ),

                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     border: Border.all(color: Color(0xFF767776))
                                 ),
                                 child: Center(child: Text('2L',style: TextStyle(fontSize: mdw*0.045),)),
                               ),
                               Container(
                                 height:mdh*0.085,
                                 width:mdw*0.085,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     border: Border.all(color: Color(0xFF767776))
                                 ),
                                 child: Center(child: Text('M',style: TextStyle(fontSize: mdw*0.045),)),
                               ),

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
                           Text("$productPrice\$",style: TextStyle(color: Color(0xFF0caeb1),fontSize: mdw*0.059),)
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
}
import 'package:craftybay/diy_components/promo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../stylesheet/style.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdh=MediaQuery.sizeOf(context).height;
    var mdw=MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/pics/logo_nav.svg',width: mdw*0.42,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundColor: Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined)),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundColor: Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(Icons.phone)),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundColor: Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(Icons.person_outline_outlined)),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: mdw*0.91,
                height: mdh*0.062,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: EdgeInsets.all(1),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Color(0xFF707171),
                      filled:true,
                      fillColor: Color(0xFFf3f2f2),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(14),
                      )
                  ),
                  cursorColor: Cursor_color,
                ),
              ),
              Container(
                child: BannerCarousel(promotions: [
                  {
                  'image':"assets/pics/shoe.png",
                  'text':'Happy New year Special Deal Save 30%'
                }
                ], mdw: mdw, mdh: mdh),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10
                ),
                width: double.infinity,
                height: mdh*0.15,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("All categories",style: TextStyle(color: Color(0xFF515150),fontWeight: FontWeight.bold,fontSize: mdw*0.06),),
                          Text("See All",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.045),)
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.laptop,color: Color(0xFF07afae)),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFe6f7f6),
                                        borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Electronis",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.utensils,color: Color(0xFF07afae)),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Food",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.gem,color: Color(0xFF07afae)),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Fashion",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.couch,color: Color(0xFF07afae),),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Furniture",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.laptop,color: Color(0xFF07afae)),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Electronis",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.utensils,color: Color(0xFF07afae)),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Food",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.gem,color: Color(0xFF07afae)),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Fashion",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: FaIcon(FontAwesomeIcons.couch,color: Color(0xFF07afae),),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFe6f7f6),
                                          borderRadius: BorderRadius.circular(14)
                                      ),
                                      padding: EdgeInsets.all(15),
                                    ),
                                    Container(child: Text("Furniture",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.044),),)
                                  ],
                                ),
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular",style: TextStyle(color: Color(0xFF515150),fontWeight: FontWeight.bold,fontSize: mdw*0.06),),
                          InkWell(onTap:(){},child: Text("See All",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.045),))
                        ],
                      ),
                    ),
                    SizedBox(
                      height:mdh*0.01
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                           Card(
                             child: Container(
                               height: mdh*0.22,
                               width: mdw*0.45,
                               margin: EdgeInsets.only(
                                 left: 10,
                                 right: 10
                               ),
                               child: Column(
                                 children: [
                                   Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                   Expanded(
                                     flex: 2,
                                       child: Container(
                                         padding: EdgeInsets.all(5),
                                         child: Column(
                                           children: [
                                             Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                             Container(
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [
                                                   Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                   RichText(
                                                     text: TextSpan(
                                                       style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                       children: [
                                                         TextSpan(text: "⭐"),
                                                         TextSpan(text: "4.5")
                                                       ]
                                                     ),
                                                   ),
                                                   InkWell(onTap:(){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap:(){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap:(){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap:(){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Special",style: TextStyle(color: Color(0xFF515150),fontWeight: FontWeight.bold,fontSize: mdw*0.06),),
                          InkWell(onTap:(){},child: Text("See All",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.045),))
                        ],
                      ),
                    ),
                    SizedBox(
                        height:mdh*0.01
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New",style: TextStyle(color: Color(0xFF515150),fontWeight: FontWeight.bold,fontSize: mdw*0.06),),
                          InkWell(onTap: (){},child: Text("See All",style: TextStyle(color: Color(0xFF07afae),fontSize: mdw*0.045),))
                        ],
                      ),
                    ),
                    SizedBox(
                        height:mdh*0.01
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                            Card(
                              child: Container(
                                height: mdh*0.22,
                                width: mdw*0.45,
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10
                                ),
                                child: Column(
                                  children: [
                                    Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Color(0xFFe6f7f6),borderRadius: BorderRadius.vertical(top: Radius.circular(14))),child: Center(child: Image.asset('assets/pics/shoe.png'),),)),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Container(child: Text("New year Special Shoe 30",overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(color: Color(0xFF757574),fontSize: mdw*0.041,fontWeight: FontWeight.bold),)),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$100",style: TextStyle(color: Color(0xFF2fbaba),fontSize: mdw*0.058),),
                                                    RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(fontSize: mdw*0.048,color: Color(0xFF6f6f6f)),
                                                          children: [
                                                            TextSpan(text: "⭐"),
                                                            TextSpan(text: "4.5")
                                                          ]
                                                      ),
                                                    ),
                                                    InkWell(onTap: (){},child: Container(decoration:BoxDecoration(color: Color(0xFF2fbaba),borderRadius: BorderRadius.circular(5)),padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.heart,color: Color(0xFF93dddd),),))
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
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined),label: "Wishlist"),
        ],
      ),
    );
  }
}
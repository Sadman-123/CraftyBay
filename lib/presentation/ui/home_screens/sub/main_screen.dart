import 'package:craftybay/presentation/ui/home_screens/sub/user_review_part/create_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../state_holders/home/homecontroller.dart';
import '../../diy_components/category_card.dart';
import '../../diy_components/product_card.dart';
import '../../diy_components/promo_card.dart';
import '../../diy_components/text_related/heading_title.dart';
import '../../stylesheet/colors.dart';
class MainScreen extends StatelessWidget{
  Homecontroller home=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    var dat=[
      {
        "category_title":"Electronis",
        "category_icon":FaIcon(FontAwesomeIcons.laptop,color: Color(0xFF07afae))
      },
      {
        "category_title":"Food",
        "category_icon":FaIcon(FontAwesomeIcons.utensils,color: Color(0xFF07afae))
      },
      {
        "category_title":"Fashion",
        "category_icon":FaIcon(FontAwesomeIcons.gem,color: Color(0xFF07afae))
      },
      {
        "category_title":"Furniture",
        "category_icon":FaIcon(FontAwesomeIcons.couch,color: Color(0xFF07afae))
      },
    ];
    var dat2 = [
      {
        'id':'0',
        'product_pic': 'assets/pics/shoe.png',
        'product_title': "New year Special Shoe 30",
        'product_price': '1200',
        'product_rating': '5.5',
      },
      {
        'id':'1',
        'product_pic': 'assets/pics/glass.png',
        'product_title': "New year Special Glass 40",
        'product_price': '420',
        'product_rating': '4.1',
      },
      {
        'id':'2',
        'product_pic': 'assets/pics/watch.png',
        'product_title': "Limited Edition Watch 30",
        'product_price': '1300',
        'product_rating': '5.0',
      },
      {
        'id':'3',
        'product_pic': 'assets/pics/glass.png',
        'product_title': "New year Special Glass 30",
        'product_price': '420',
        'product_rating': '4.1',
      },
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            title: SvgPicture.asset('assets/pics/logo_nav.svg',width: mdw*0.42,),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundColor: Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundColor: Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.phone)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundColor: Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.person)),),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
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
                        },
                        {
                          'image':"assets/pics/glass.png",
                          'text':'Buy Sunglass Hot Deal Save 40%'
                        },
                        {
                          'image':"assets/pics/watch.png",
                          'text':'Get Limited Edition Watch Now'
                        },
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
                          HeadingTitle(mdw: mdw, title: "All categories", onseeAllTap: (){home.ind.value=1;}),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              child: Row(
                                children: List.generate(dat.length, (index) => CategoryCard(mdw: mdw, category_title: dat[index]['category_title'].toString(), category_icon: dat[index]['category_icon'] as Widget,),
                              ),
                            ),
                          )
                          )],
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
                          HeadingTitle(mdw: mdw, title: "Popular", onseeAllTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CreateReview(),));}),
                          SizedBox(
                              height:mdh*0.01
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              child: Row(
                                children:dat2.map((item){
                                  print(item.keys);
                                  return Product_Card('popular',int.parse(item['id']!),context: context, mdh: mdh, mdw: mdw, product_pic: item['product_pic'].toString(), product_title: item['product_title'].toString(), product_price: item['product_price'].toString(), product_rating: item['product_rating'].toString(), onLike: (){});
                                }).toList()
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10
                      ),
                      child: Column(
                        children: [
                          HeadingTitle(mdw: mdw, title: "Special", onseeAllTap: (){}),
                          SizedBox(
                              height:mdh*0.01
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              child: Row(
                                  children:dat2.map((item){
                                    return Product_Card('special',int.parse(item['id']!),context: context, mdh: mdh, mdw: mdw, product_pic: item['product_pic'].toString(), product_title: item['product_title'].toString(), product_price: item['product_price'].toString(), product_rating: item['product_rating'].toString(), onLike: (){});
                                  }).toList()
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
                          HeadingTitle(mdw: mdw, title: "New", onseeAllTap: (){}),
                          SizedBox(
                              height:mdh*0.01
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              child: Row(
                                  children:dat2.map((item){
                                    return Product_Card('new',int.parse(item['id']!),context: context, mdh: mdh, mdw: mdw, product_pic: item['product_pic'].toString(), product_title: item['product_title'].toString(), product_price: item['product_price'].toString(), product_rating: item['product_rating'].toString(), onLike: (){});
                                  }).toList()
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
          )
        ],
      ),
    );
  }
}
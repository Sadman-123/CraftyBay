import 'package:craftybay/presentation/ui/home_screens/sub/user_review_part/create_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../state_holders/home/homecontroller.dart';
import '../../diy_components/category_card.dart';
import '../../diy_components/product_card.dart';
import 'package:craftybay/data/data.dart';
import '../../diy_components/promo_card.dart';
import '../../diy_components/text_related/heading_title.dart';
import '../../stylesheet/colors.dart';
class MainScreen extends StatelessWidget{
  Homecontroller home=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
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
                child: CircleAvatar(backgroundColor: Get.isDarkMode?Colors.amber:Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundColor: Get.isDarkMode?Colors.amber:Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.phone)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundColor: Get.isDarkMode?Colors.amber:Color(0xFFf3f2f2),child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.person)),),
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
                        cursorColor: AppColors.Cursor_color,
                      ),
                    ),
                    Container(
                      child: BannerCarousel(promotions: promotions, mdw: mdw, mdh: mdh),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10
                      ),
                      width: double.infinity,
                      height: mdh*0.18,
                      child: Column(
                        children: [
                          HeadingTitle(
                            mdw: mdw,
                            title: "All categories",
                            onseeAllTap: () {
                              home.ind.value = 1;
                            },
                          ),
                          Obx(() {
                            if (home.categoryList.isEmpty) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  home.categoryList.length,
                                      (index) => CategoryCard(
                                    mdw: mdw,
                                    category_title: home.categoryList[index]['categoryName'].toString(),
                                    category_pic: home.categoryList[index]['categoryImg'],
                                  ),
                                ),
                              ),
                            );
                          }),
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
                          HeadingTitle(mdw: mdw, title: "Popular", onseeAllTap: (){Get.toNamed('/create_review');}),
                          SizedBox(
                              height:mdh*0.01
                          ),
                          Obx((){
                            if(home.popularList.isEmpty)
                              {
                                return Center(child: CircularProgressIndicator(),);
                              }
                            else{
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  child: Row(
                                      children: List.generate(home.popularList.length, (index) {
                                        return Product_Card(home.popularList[index]['remark'], home.popularList[index]['id'], context: context, mdh: mdh, mdw: mdw, product_pic: home.popularList[index]['image'], product_title: home.popularList[index]['title'], product_price: home.popularList[index]['price'], product_rating: home.popularList[index]['star'], onLike: () {},);
                                      },),
                                  ),
                                ),
                              );
                            }
                          })
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
                          Obx((){
                            if(home.specialList.isEmpty)
                            {
                              return Center(child: CircularProgressIndicator(),);
                            }
                            else{
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  child: Row(
                                    children: List.generate(home.specialList.length, (index) {
                                      return Product_Card(home.specialList[index]['remark'], home.specialList[index]['id'], context: context, mdh: mdh, mdw: mdw, product_pic: home.specialList[index]['image'], product_title: home.specialList[index]['title'], product_price: home.specialList[index]['price'], product_rating: home.specialList[index]['star'], onLike: () {},);
                                    },),
                                  ),
                                ),
                              );
                            }
                          })
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
                          Obx((){
                            if(home.newList.isEmpty)
                            {
                              return Center(child: CircularProgressIndicator(),);
                            }
                            else{
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  child: Row(
                                    children: List.generate(home.newList.length, (index) {
                                      return Product_Card(home.newList[index]['remark'], home.newList[index]['id'], context: context, mdh: mdh, mdw: mdw, product_pic: home.newList[index]['image'], product_title: home.newList[index]['title'], product_price: home.newList[index]['price'], product_rating: home.newList[index]['star'], onLike: () {},);
                                    },),
                                  ),
                                ),
                              );
                            }
                          })
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
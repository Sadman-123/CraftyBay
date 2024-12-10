import 'package:craftybay/home_screens/controllers/homecontroller.dart';
import 'package:craftybay/home_screens/sub/cart_screen.dart';
import 'package:craftybay/home_screens/sub/category_screen.dart';
import 'package:craftybay/home_screens/sub/main_screen.dart';
import 'package:craftybay/home_screens/sub/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget{
  Homecontroller home=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdh=MediaQuery.sizeOf(context).height;
    var mdw=MediaQuery.sizeOf(context).width;
    return Obx((){
      return Scaffold(
        body: IndexedStack(
          index: home.ind.value,
          children: [
            MainScreen(),
            CategoryScreen(),
            CartScreen(),
            WishlistScreen()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            home.ind.value=value;
          },
          currentIndex: home.ind.value,
          items: [
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house),label: "Home"),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cubes),label: "Category"),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.basketShopping),label: "Cart"),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.gift),label: "Wish"),
          ],
        ),
      );
    });
  }
}
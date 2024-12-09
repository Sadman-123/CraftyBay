import 'package:craftybay/home_screens/sub/cart_screen.dart';
import 'package:craftybay/home_screens/sub/category_screen.dart';
import 'package:craftybay/home_screens/sub/main_screen.dart';
import 'package:craftybay/home_screens/sub/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int ind=0;
  @override
  Widget build(BuildContext context) {
    var mdh=MediaQuery.sizeOf(context).height;
    var mdw=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: IndexedStack(
        index: ind,
        children: [
          MainScreen(),
          CategoryScreen(),
          CartScreen(),
          WishlistScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            ind=value;
          });
        },
        currentIndex: ind,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house),label: "Home"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cubes),label: "Category"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.basketShopping),label: "Cart"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.gift),label: "Wishlist"),
        ],
      ),
    );
  }
}
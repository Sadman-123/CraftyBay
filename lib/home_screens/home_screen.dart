import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Center(
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
            )
          ],
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../state_holders/home/homecontroller.dart';
import '../../diy_components/category_card.dart';
class CategoryScreen extends StatelessWidget {
  Homecontroller home=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.sizeOf(context).width;
    var mdh = MediaQuery.sizeOf(context).height;
    var dat = [
      {
        "category_title": "Electronics",
        "category_icon": FaIcon(FontAwesomeIcons.laptop, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Food",
        "category_icon": FaIcon(FontAwesomeIcons.utensils, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Fashion",
        "category_icon": FaIcon(FontAwesomeIcons.gem, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Furniture",
        "category_icon": FaIcon(FontAwesomeIcons.couch, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Electronics",
        "category_icon": FaIcon(FontAwesomeIcons.laptop, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Food",
        "category_icon": FaIcon(FontAwesomeIcons.utensils, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Fashion",
        "category_icon": FaIcon(FontAwesomeIcons.gem, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Furniture",
        "category_icon": FaIcon(FontAwesomeIcons.couch, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Electronics",
        "category_icon": FaIcon(FontAwesomeIcons.laptop, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Food",
        "category_icon": FaIcon(FontAwesomeIcons.utensils, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Fashion",
        "category_icon": FaIcon(FontAwesomeIcons.gem, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Furniture",
        "category_icon": FaIcon(FontAwesomeIcons.couch, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Electronics",
        "category_icon": FaIcon(FontAwesomeIcons.laptop, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Food",
        "category_icon": FaIcon(FontAwesomeIcons.utensils, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Fashion",
        "category_icon": FaIcon(FontAwesomeIcons.gem, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Furniture",
        "category_icon": FaIcon(FontAwesomeIcons.couch, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Electronics",
        "category_icon": FaIcon(FontAwesomeIcons.laptop, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Food",
        "category_icon": FaIcon(FontAwesomeIcons.utensils, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Fashion",
        "category_icon": FaIcon(FontAwesomeIcons.gem, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Furniture",
        "category_icon": FaIcon(FontAwesomeIcons.couch, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Electronics",
        "category_icon": FaIcon(FontAwesomeIcons.laptop, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Food",
        "category_icon": FaIcon(FontAwesomeIcons.utensils, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Fashion",
        "category_icon": FaIcon(FontAwesomeIcons.gem, color: Color(0xFF07afae)),
      },
      {
        "category_title": "Furniture",
        "category_icon": FaIcon(FontAwesomeIcons.couch, color: Color(0xFF07afae)),
      },
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  icon: Icon(
                    CupertinoIcons.chevron_left,
                    color: Color(0xFF010001),
                  ),
                ),
                SizedBox(width: mdw * 0.025),
                Text(
                  "Category",
                  style: TextStyle(color: Color(0xFF515051)),
                ),
              ],
            ),
            elevation: 4,
            shadowColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
                itemCount: dat.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    mdw: mdw,
                    category_title: dat[index]['category_title'].toString(),
                    category_icon: dat[index]['category_icon'] as Widget,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
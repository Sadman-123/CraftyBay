import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../state_holders/home/homecontroller.dart';
import '../../diy_components/category_card.dart';
class Brands extends StatelessWidget{
  Homecontroller home=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.sizeOf(context).width;
    var mdh = MediaQuery.sizeOf(context).height;
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
                  "Brands",
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
              child: Obx((){
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1,
                  ),
                  itemCount: home.brandlist.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      mdw: mdw,
                      category_title: home.brandlist[index]['brandName'].toString(),
                      category_pic: home.brandlist[index]['brandImg'].toString(),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
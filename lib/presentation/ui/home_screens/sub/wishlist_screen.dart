import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WishlistScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_left,color: Color(0xFF010001),)),
                SizedBox(width: mdw*0.025,),
                Text("Wish List",style: TextStyle(color: Color(0xFF515051)),),
              ],
            ),
            elevation: 4,
            shadowColor: Colors.black,
          )
        ],
      ),
    );
  }
}
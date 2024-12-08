import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
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
    );
  }
}
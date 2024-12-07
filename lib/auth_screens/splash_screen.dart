import 'package:craftybay/stylesheet/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdh=MediaQuery.sizeOf(context).height;
    var mdw=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor:Scaffold_color,
      appBar: AppBar(
        backgroundColor: Scaffold_color,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: mdh*0.2,),
            Container(
              child: SvgPicture.asset('assets/pics/logo.svg',width: mdw*0.35,),
            ),
            Spacer(),
            CircularProgressIndicator(color: Color(0xFF06afaf),),
            SizedBox(height: mdh*0.03,),
            Text("Version 1.1",style: Version_Txt(),),
            SizedBox(height: mdh*0.12,)
          ],
        ),
      ),
    );
  }}
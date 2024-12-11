import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../stylesheet/colors.dart';
import '../stylesheet/widgets_style.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '/home');
    },);
  }
  @override
  Widget build(BuildContext context) {
    var mdh=MediaQuery.sizeOf(context).height;
    var mdw=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor:AppColors.Scaffold_color,
      appBar: AppBar(
        backgroundColor: AppColors.Scaffold_color,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: mdh*0.2,),
            Container(
              child: Hero(tag: "logo",child: SvgPicture.asset('assets/pics/logo.svg',width: mdw*0.35,)),
            ),
            Spacer(),
            CircularProgressIndicator(color: Color(0xFF06afaf),),
            SizedBox(height: mdh*0.03,),
            Text("Version 1.1",style: WidgetsStyle.Version_Txt(),),
            SizedBox(height: mdh*0.12,)
          ],
        ),
      ),
    );
  }}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../stylesheet/colors.dart';
import '../stylesheet/widgets_style.dart';
class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Hero(tag: "logo",child: SvgPicture.asset('assets/pics/logo.svg',width: mdw*0.295,)),
                ),
                Container(child: Text("Welcome Back",style: Complete_Profile_Txt(mdw),),),
                Container(child: Text("Please Enter Your Email Address",style: SubTxt1(mdw),),),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                      top: 15
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email Address"
                    ),
                    cursorColor: Cursor_color,
                  ),
                ),
                SizedBox(height: mdh*0.03,),
                Container(
                  decoration: BoxDecoration(
                      color: Registration_Button_Color,
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Center(child: Text("Next",style: Registration_Button_Txt(mdw),)),
                  width: mdw*0.83,
                  height: mdh*0.06,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
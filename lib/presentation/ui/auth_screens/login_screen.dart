import 'package:craftybay/presentation/ui/diy_components/authbutton.dart';
import 'package:craftybay/presentation/ui/diy_components/text_related/link_signinup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../stylesheet/colors.dart';
import '../stylesheet/widgets_style.dart';
import 'package:get/get.dart';
class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Hero(tag: "logo",child: SvgPicture.asset('assets/pics/logo.svg',width: mdw*0.295,)),
                ),
                Container(child: Text("Welcome Back",style: WidgetsStyle.Complete_Profile_Txt(mdw),),),
                Container(child: Text("Please Enter Your Email Address",style: WidgetsStyle.SubTxt1(mdw),),),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                      top: 15
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email Address"
                    ),
                    cursorColor: AppColors.Cursor_color,
                  ),
                ),
                SizedBox(height: mdh*0.03,),
                Authbutton(mdw, mdh, (){Get.toNamed('/otp');}, Buttontxt: "Next"),
                SizedBox(height: mdh*0.03,),
                LinkSigninup(mdw, mdh, (){Get.toNamed('/register');}, txt1: "Don't have account?", txt2: 'Create One')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
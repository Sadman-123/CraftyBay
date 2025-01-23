import 'package:craftybay/presentation/ui/diy_components/authbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../diy_components/text_related/link_signinup.dart';
import '../stylesheet/colors.dart';
import '../stylesheet/widgets_style.dart';
class RegisterScreen extends StatelessWidget{
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
                Container(child: Text("Complete Profile",style: WidgetsStyle.Complete_Profile_Txt(mdw),),),
                Container(child: Text("Get Started with us with your details",style: WidgetsStyle.SubTxt1(mdw),),),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                    top: 15
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Last Name"
                    ),
                    cursorColor: AppColors.Cursor_color,
                  ),
                ),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                      top: 15
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Mobile"
                    ),
                    cursorColor: AppColors.Cursor_color,
                  ),
                ),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                      top: 15
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "City"
                    ),
                    cursorColor: AppColors.Cursor_color,
                  ),
                ),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                      top: 15
                  ),
                  child: TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: "Address"
                    ),
                    cursorColor: AppColors.Cursor_color,
                  ),
                ),
                SizedBox(height: mdh*0.03,),
                Authbutton(mdw, mdh, (){}, Buttontxt: "Complete"),
                SizedBox(height: mdh*0.03,),
                LinkSigninup(mdw, mdh, (){Get.toNamed('/login');}, txt1: "Already have account?", txt2: 'Login Now')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
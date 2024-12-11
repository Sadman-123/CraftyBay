import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../stylesheet/style.dart';
class RegisterScreen extends StatelessWidget{
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
                Container(child: Text("Complete Profile",style: Complete_Profile_Txt(mdw),),),
                Container(child: Text("Get Started with us with your details",style: SubTxt1(mdw),),),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                    top: 15
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Last Name"
                    ),
                    cursorColor: Cursor_color,
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
                    cursorColor: Cursor_color,
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
                    cursorColor: Cursor_color,
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
                    cursorColor: Cursor_color,
                  ),
                ),
                SizedBox(height: mdh*0.03,),
                Container(
                  decoration: BoxDecoration(
                    color: Registration_Button_Color,
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child: Center(child: Text("Complete",style: Registration_Button_Txt(mdw),)),
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
import 'package:craftybay/presentation/ui/diy_components/authbutton.dart';
import 'package:craftybay/presentation/ui/diy_components/text_related/link_signinup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import '../stylesheet/colors.dart';
import '../stylesheet/widgets_style.dart';
class OtpScreen extends StatelessWidget{
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
                Container(child: Text("Enter OTP Code",style: WidgetsStyle.Complete_Profile_Txt(mdw),),),
                Container(child: Text("A 4 Digit OTP Code has been sent",style: WidgetsStyle.SubTxt1(mdw),),),
                Container(
                  width: mdw*0.83,
                  margin: EdgeInsets.only(
                      top: 15
                  ),
                  child:  Pinput(
                    length: 4,
                    keyboardType: TextInputType.number,
                    pinAnimationType: PinAnimationType.scale,
                    defaultPinTheme: WidgetsStyle.pin_code_theme(mdw, mdh),
                    onChanged: (pin){

                    },
                  ),
                ),
                SizedBox(height: mdh*0.04,),
                Authbutton(mdw, mdh, (){}, Buttontxt: "Next"),
                SizedBox(height: mdh*0.04,),
                LinkSigninup(mdw, mdh, (){}, txt1: "This code will expire in ", txt2: "120s"),
                SizedBox(height: mdh*0.001,),
                Container(
                  child: TextButton(onPressed: (){}, child: Text("Resend Code",style:WidgetsStyle.Resend_Txt(mdw),))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
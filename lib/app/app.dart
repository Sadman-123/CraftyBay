import 'package:craftybay/auth_screens/login_screen.dart';
import 'package:craftybay/auth_screens/otp_screen.dart';
import 'package:craftybay/auth_screens/register_screen.dart';
import 'package:craftybay/auth_screens/splash_screen.dart';
import 'package:craftybay/home_screens/home_screen.dart';
import 'package:craftybay/home_screens/sub/product_details.dart';
import 'package:craftybay/stylesheet/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CraftyBay extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme(),
      themeMode: ThemeMode.light,
      initialRoute: '/splash',
      getPages: [
        GetPage(name:'/splash' , page: () =>SplashScreen() ,transition: Transition.cupertino),
        GetPage(name: '/register', page: ()=>RegisterScreen(),transition: Transition.cupertino),
        GetPage(name: '/login', page: () => LoginScreen(),transition: Transition.cupertino),
        GetPage(name: '/otp', page: ()=>OtpScreen(),transition: Transition.cupertino),
        GetPage(name: '/home', page: () => HomeScreen(),transition: Transition.cupertino),
        GetPage(name: '/product_details', page: () => ProductDetails(),transition: Transition.cupertino)
      ],
    );
  }
}
import 'package:craftybay/auth_screens/login_screen.dart';
import 'package:craftybay/auth_screens/otp_screen.dart';
import 'package:craftybay/auth_screens/register_screen.dart';
import 'package:craftybay/auth_screens/splash_screen.dart';
import 'package:craftybay/home_screens/home_screen.dart';
import 'package:craftybay/home_screens/sub/product_details.dart';
import 'package:craftybay/stylesheet/style.dart';
import 'package:flutter/material.dart';
class CraftyBay extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme(),
      themeMode: ThemeMode.light,
      initialRoute: '/home',
      routes: {
        '/splash':(context)=>SplashScreen(),
        '/register':(context)=>RegisterScreen(),
        '/login':(context)=>LoginScreen(),
        '/otp':(context)=>OtpScreen(),
        '/home':(context)=>HomeScreen(),
        '/product_details':(context)=>ProductDetails()
      },
    );
  }
}
import 'package:craftybay/auth_screens/splash_screen.dart';
import 'package:flutter/material.dart';
class CraftyBay extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash':(context)=>SplashScreen()
      },
    );
  }
}
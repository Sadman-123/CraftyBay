import 'package:craftybay/auth_screens/register_screen.dart';
import 'package:craftybay/auth_screens/splash_screen.dart';
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
      initialRoute: '/register',
      routes: {
        '/splash':(context)=>SplashScreen(),
        '/register':(context)=>RegisterScreen()
      },
    );
  }
}
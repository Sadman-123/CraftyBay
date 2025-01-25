import 'package:craftybay/application/state_holders_bindings.dart';
import 'package:craftybay/presentation/ui/home_screens/sub/brands.dart';
import 'package:craftybay/presentation/ui/home_screens/sub/user_review_part/create_review.dart';
import 'package:craftybay/presentation/ui/stylesheet/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../presentation/ui/auth_screens/login_screen.dart';
import '../presentation/ui/auth_screens/otp_screen.dart';
import '../presentation/ui/auth_screens/register_screen.dart';
import '../presentation/ui/auth_screens/splash_screen.dart';
import '../presentation/ui/home_screens/home_screen.dart';
import '../presentation/ui/home_screens/sub/product_details.dart';
class CraftyBay extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.LightTheme,
      darkTheme: AppThemes.DarkTheme,
      themeMode: ThemeMode.light,
      initialBinding: StateHoldersBindings(),
      initialRoute: '/splash',
      getPages: [
        GetPage(name:'/splash' , page: () =>SplashScreen() ,transition: Transition.cupertino),
        GetPage(name: '/register', page: ()=>RegisterScreen(),transition: Transition.cupertino),
        GetPage(name: '/login', page: () => LoginScreen(),transition: Transition.cupertino),
        GetPage(name: '/otp', page: ()=>OtpScreen(),transition: Transition.cupertino),
        GetPage(name: '/home', page: () => HomeScreen(),transition: Transition.cupertino),
        GetPage(name: '/product_details', page: () => ProductDetails(),transition: Transition.cupertino),
        GetPage(name: '/create_review', page: () => CreateReview(),transition: Transition.cupertino),
        GetPage(name: '/brands', page: () => Brands(),transition: Transition.cupertino),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/text/text_normal.dart';
import 'package:login_page/ui/intro_screen/intro_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children:  [
          TextNormal(title: 'Ecommerce\nConcept ',fontWeight: FontWeight.w800,size: 30.sp,height: 1.0.h,colors: AppColors.bPrimaryColor,),
        ],
      ),
      duration: 3000,
      nextScreen: const IntroScreen(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: AppColors.cPrimaryColor,
    );
  }
}

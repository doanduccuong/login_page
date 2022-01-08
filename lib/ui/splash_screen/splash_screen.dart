import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:login_page/config/colors.dart';
import 'package:login_page/config/images.dart';

import 'package:login_page/ui/intro_screen/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(AppImage.imgSplash),
      duration: 3000,
      nextScreen: const IntroScreen(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: AppColors.cPrimaryColor,
    );
  }
}

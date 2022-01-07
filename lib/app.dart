import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/ui/intro_screen/intro_screen.dart';
import 'package:login_page/ui/splash_screen/splash_screen.dart';

import 'config/constants.dart';
class LogInApp extends StatelessWidget {
  const LogInApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: 'Login App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
        routes: {
          Constants.IntroScreen: (context) => const IntroScreen(),
        },
      ),
    );
  }
}

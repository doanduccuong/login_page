import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/config/images.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
          child: Container(
            height: 100,
            child: SvgPicture.asset(AppImage.imgHomePage,fit: BoxFit.cover,),
          ),
        )
    );
  }
}

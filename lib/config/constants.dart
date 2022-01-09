import 'package:flutter/material.dart';
import 'package:login_page/config/icon.dart';
import 'package:login_page/config/icon_data.dart';

class Constants {
  static const String IntroScreen = "/intro_screen";
  static List<IconDatas> iconDatas = [
    IconDatas(iconName: 'Iphones', iconData: AppIcon.iconIphone),
    IconDatas(iconName: 'Computer', iconData: AppIcon.iconComputer),
    IconDatas(iconName: 'Health', iconData: AppIcon.iconHealth),
    IconDatas(iconName: 'Books', iconData: AppIcon.iconBook),
  ];
  static List<IconData> iconBottomBar = [
    Icons.shopping_bag_outlined,
    Icons.favorite_outline_rounded,
    Icons.person,
  ];
}


import 'package:flutter/material.dart';
import 'package:login_page/config/icon.dart';
import 'package:login_page/config/icon_data.dart';
import 'package:login_page/ui/intro_screen/icon_filter/icon_filter.dart';

class Constants {
  static const String IntroScreen = "/intro_screen";
  static  List<IconDatas> iconDatas = [
    IconDatas(iconName: 'Iphones', iconData: AppIcon.iconIphone),
    IconDatas(iconName: 'Computer', iconData: AppIcon.iconComputer),
    IconDatas(iconName: 'Health', iconData: AppIcon.iconHealth),
    IconDatas(iconName: 'Books', iconData: AppIcon.iconBook),
  ];
}

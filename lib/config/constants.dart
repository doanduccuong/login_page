import 'package:login_page/config/card_properties.dart';
import 'package:login_page/config/icon.dart';
import 'package:login_page/config/icon_data.dart';
import 'package:login_page/config/images.dart';

class Constants {
  static const String IntroScreen = "/intro_screen";
  static List<IconDatas> iconDatas = [
    IconDatas(iconName: 'Iphones', iconData: AppIcon.iconIphone),
    IconDatas(iconName: 'Computer', iconData: AppIcon.iconComputer),
    IconDatas(iconName: 'Health', iconData: AppIcon.iconHealth),
    IconDatas(iconName: 'Books', iconData: AppIcon.iconBook),
  ];
  static List<CardProperties> card = [
    CardProperties(
        cardImages: AppImage.imgSamSung,
        salePriceText: "\$1,500",
        priceText: "\$1,047",
        supportingText: 'Samsung Galaxy s20 Ultra'),
    CardProperties(
        cardImages: AppImage.imgXiaoMi,
        salePriceText: "\$400",
        priceText: "\$300",
        supportingText: 'Xiaomi Mi 10 Pro'),
    CardProperties(
        cardImages: AppImage.imgSamSungNote20,
        salePriceText: "\$1,500",
        priceText: "\$1,047",
        supportingText: 'Samsung Note 20 Ultra'),
    CardProperties(
        cardImages: AppImage.imgMotorola,
        salePriceText: "\$400",
        priceText: "\$300",
        supportingText: 'Motorola One Edge '),
  ];
}

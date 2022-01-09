import 'package:flutter/material.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/config/text/text_bold.dart';
import 'package:login_page/config/text/text_normal.dart';

Widget BuildCard() {
  var supportingText = 'SamSung Galaxy S20 Ultra';
  var priceText = "\$1,047";
  var salePriceText = "\$1500";
  var cardImage = const AssetImage(AppImage.imgSamSung);
  return SizedBox(
    height: 227.h,
    width: 181.w,
    child: Card(
      color: AppColors.bPrimaryColor,
      elevation: 4,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: const BoxDecoration(
                    color: AppColors.bPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 15.sp,
                    color: AppColors.fPrimaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 88.h,
                width: 168.w,
                child: Ink.image(
                  image: cardImage,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          ListTile(
            title: TextBold(
              title: supportingText,
              size: 10.sp,
              height: 1.19.h,
              colors: AppColors.dPrimaryColor,
            ),
            subtitle: Row(
              children: [
                TextBold(title: priceText, colors: AppColors.cPrimaryColor, size: 16.sp, height: 1.29.h),
                TextNormal(title: salePriceText,colors: AppColors.lPrimaryColor,size: 10.sp,height: 1.29.h,)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

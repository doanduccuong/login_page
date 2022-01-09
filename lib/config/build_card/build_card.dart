import 'package:flutter/material.dart';
import 'package:login_page/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/config/text/text_bold.dart';
import 'package:login_page/config/text/text_normal.dart';

class BuildCard extends StatelessWidget {
  BuildCard({Key? key, required this.salePriceText,required this.priceText,required this.supportingText,required this.cardImages}) : super(key: key);
  String cardImages;
  String supportingText;
  String priceText;
  String salePriceText;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.bPrimaryColor,
      elevation: 4,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 20.h,
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
                child: Image.asset(cardImages,fit: BoxFit.fill,),
              )
            ],
          ),
          ListTile(
            title: TextBold(
              title: supportingText,
              size: 10.sp,
              height: 1.19.h,
              colors: AppColors.ePrimaryColor,
            ),
            subtitle: Row(
              children: [
                TextBold(
                    title: priceText,
                    colors: AppColors.cPrimaryColor,
                    size: 16.sp,
                    height: 1.29.h),
                TextNormal(
                  title: salePriceText,
                  colors: AppColors.lPrimaryColor,
                  size: 10.sp,
                  height: 1.29.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

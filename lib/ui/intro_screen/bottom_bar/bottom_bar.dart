import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/constants.dart';
import 'package:login_page/config/text/text_normal.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.sp),
          color: AppColors.cPrimaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 8.h,
            width: 8.w,
            decoration: const BoxDecoration(
                color: AppColors.bPrimaryColor, shape: BoxShape.circle),
          ),
          TextNormal(
            title: 'Explorer',
            size: 15.sp,
            height: 1.27,
            fontWeight: FontWeight.w700,
            colors: AppColors.bPrimaryColor,
          ),
          const Icon(Icons.shopping_bag_outlined,size: 40,color: AppColors.bPrimaryColor,),
          const Icon(Icons.favorite_outline_rounded,size: 40,color: AppColors.bPrimaryColor,),
          const Icon(Icons.person,size: 40,color: AppColors.bPrimaryColor,),
        ],
      ),
    );
  }
}

class IconsBottomBar extends StatelessWidget {
  IconData iconData;

  IconsBottomBar({Key? key, required this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: 30.sp,
      color: AppColors.bPrimaryColor,
    );
  }
}
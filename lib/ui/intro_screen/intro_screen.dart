import 'package:flutter/material.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/text/text_bold.dart';
import 'package:login_page/config/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left: 17.w),
          child: Column(

            children: [
              Padding(
                padding:  EdgeInsets.only(top: 64.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                     const Icon(
                      Icons.add_location_alt_outlined,
                      color: AppColors.dPrimaryColor,
                    ),
                    SizedBox(width: 11.w,),
                    TextNormal(title: 'Zihuatanejo, Gro',fontWeight: FontWeight.w500,size: 15.sp,colors: AppColors.ePrimaryColor,)
                  ],
                ),
              ),
              Row(
                children: [
                  TextBold(title: 'Select Category', colors: AppColors.cPrimaryColor, size: 25.sp, height: 1.27.h),
                  SizedBox(width: 119.w,),
                  TextNormal(title: 'view all',fontWeight: FontWeight.w400,size: 15.sp,height: 1.27.h,colors: AppColors.dPrimaryColor,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/icon.dart';
import 'package:login_page/config/text/text_bold.dart';
import 'package:login_page/config/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/ui/intro_screen/icon_filter/icon_filter.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.hPrimaryColor,
        body: Padding(
          padding: EdgeInsets.only(left: 17.w, right: 33.w, top: 45.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add_location_alt_outlined,
                    color: AppColors.dPrimaryColor,
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  TextNormal(
                    title: 'Zihuatanejo, Gro',
                    fontWeight: FontWeight.w500,
                    size: 15.sp,
                    colors: AppColors.ePrimaryColor,
                  )
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  TextBold(
                      title: 'Select Category',
                      colors: AppColors.cPrimaryColor,
                      size: 25.sp,
                      height: 1.27.h),
                  SizedBox(
                    width: 90.w,
                  ),
                  TextNormal(
                    title: 'view all',
                    fontWeight: FontWeight.w400,
                    size: 15.sp,
                    height: 1.27.h,
                    colors: AppColors.dPrimaryColor,
                  )
                ],
              ),
              const IconFilter(),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.w, right: 50.w),
                    decoration: BoxDecoration(
                      color: AppColors.bPrimaryColor,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    width: 300.w,
                    height: 34.h,
                    child: SizedBox(
                      height: 15.h,
                      child: TextFormField(
                        autofocus: true,
                        decoration: const InputDecoration(
                          icon: Icon(
                            AppIcon.iconSearch,
                            color: AppColors.fPrimaryColor,
                          ),
                          fillColor: AppColors.iPrimaryColor,
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.category_outlined,
                    color: AppColors.fPrimaryColor,
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

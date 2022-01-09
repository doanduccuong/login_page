import 'package:flutter/material.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/icon.dart';
import 'package:login_page/config/images.dart';
import 'package:login_page/config/text/text_bold.dart';
import 'package:login_page/config/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/ui/intro_screen/icon_filter/icon_filter.dart';
import 'package:login_page/ui/intro_screen/product_field/product_field.dart';

import 'bottom_bar/bottom_bar.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: Row(
                  children: [
                    TextBold(
                        title: 'Hot sales',
                        colors: AppColors.iPrimaryColor,
                        size: 25.sp,
                        height: 1.27.h),
                    const Spacer(),
                    TextNormal(
                      title: 'see more',
                      size: 15.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.27.h,
                      colors: AppColors.dPrimaryColor,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: 23.h, left: 32.w, bottom: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.fPrimaryColor,
                          ),
                          width: 27.w,
                          height: 27.h,
                          child: TextBold(
                            title: 'New',
                            height: 1.26.h,
                            colors: AppColors.bPrimaryColor,
                            size: 10.sp,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 18.h, bottom: 5.h),
                          child: TextNormal(
                            title: 'Iphone 12',
                            size: 25.sp,
                            height: 1.19.h,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextNormal(
                          title: 'Súper. Mega. Rápido.',
                          size: 11.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.19.h,
                        ),
                        const Spacer(),
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: TextBold(
                              title: 'Buy Now!',
                              height: 1.12.h,
                              colors: AppColors.iPrimaryColor,
                              size: 11.sp,
                            ),
                            width: 98.w,
                            height: 23.h,
                            decoration: BoxDecoration(
                              color: AppColors.bPrimaryColor,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10.r),
                      ),
                      color: AppColors.kPrimaryColor,
                    ),
                    height: 199,
                    width: 150,
                  ),
                  Flexible(
                    child: Container(
                      height: 199,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AppImage.imgPhones),
                          ),
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(10.r),
                          ),
                          color: AppColors.kPrimaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  TextBold(
                      title: 'Best Seller',
                      colors: AppColors.iPrimaryColor,
                      size: 25.sp,
                      height: 1.12.h),
                  const Spacer(),
                  TextNormal(
                    title: 'see more',
                    fontWeight: FontWeight.w400,
                    size: 15.sp,
                    height: 1.19,
                    colors: AppColors.dPrimaryColor,
                  ),
                ],
              ),
              const ProducField()
            ],
          ),
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}


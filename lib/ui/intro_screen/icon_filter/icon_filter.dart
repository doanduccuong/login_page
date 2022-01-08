import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/config/colors.dart';
import 'package:login_page/config/constants.dart';
import 'package:login_page/config/text/text_normal.dart';

class IconFilter extends StatefulWidget {
  const IconFilter({Key? key}) : super(key: key);

  @override
  State<IconFilter> createState() => _IconFilter();
}

class _IconFilter extends State<IconFilter> {
  IconData iconSelected = Icons.add;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Constants.iconDatas.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                setState(
                  () {
                    iconSelected = Constants.iconDatas[index].iconData;
                  },
                );
              },
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Icon(
                        Constants.iconDatas[index].iconData,
                        size: 30.sp,
                        color: iconSelected == Constants.iconDatas[index].iconData
                            ? AppColors.bPrimaryColor
                            : AppColors.gPrimaryColor,
                      ),
                    ),
                    height: 71.h,
                    width: 71.w,
                    decoration: BoxDecoration(
                        color: iconSelected == Constants.iconDatas[index].iconData
                            ? AppColors.fPrimaryColor
                            : AppColors.bPrimaryColor,
                        shape: BoxShape.circle),
                  ),
                  TextNormal(
                    title: Constants.iconDatas[index].iconName,
                    size: 12.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.26.h,
                    colors: iconSelected == Constants.iconDatas[index].iconData
                        ? AppColors.fPrimaryColor
                        : Colors.black,
                  ),
                ],
              ));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class TextNormal extends StatelessWidget {
  final String title;
  final Color? colors;
  final double? size;
  final double? height;
  final bool? isCenter;
  final FontWeight? fontWeight;

  const TextNormal(
      {Key? key,
        required this.title,
        this.colors,
        this.size,
        this.height,
        this.isCenter,
        this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCenter != null ? TextAlign.center : null,
      style: TextStyle(
        color: colors ?? AppColors.bPrimaryColor,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: 'Roboto-Medium',
        fontSize: size ?? 17.sp,
        height: height ?? 1.3.h,
      ),
    );
  }
}

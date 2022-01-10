import 'package:flutter/material.dart';
import 'package:login_page/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/config/text/text_bold.dart';
import 'package:login_page/config/text/text_normal.dart';

class BuildCard extends StatefulWidget {
  BuildCard(
      {Key? key,
      required this.salePriceText,
      required this.priceText,
      required this.supportingText,
      required this.cardImages})
      : super(key: key);
  String cardImages;
  String supportingText;
  String priceText;
  String salePriceText;

  @override
  State<BuildCard> createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 181.w,
      height: 227.h,
      color: AppColors.bPrimaryColor,
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 88.h,
                width: 168.w,
                child: Image.asset(
                  widget.cardImages,
                  fit: BoxFit.fill,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    check = !check;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 125.w, top: 10),
                  child: Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      check ? Icons.favorite_outline_rounded : Icons.favorite,
                      size: 15,
                      color: AppColors.fPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          ListTile(
            title: TextBold(
              title: widget.supportingText,
              size: 10.sp,
              height: 1.19.h,
              colors: AppColors.ePrimaryColor,
            ),
            subtitle: Row(
              children: [
                TextBold(
                    title: widget.priceText,
                    colors: AppColors.cPrimaryColor,
                    size: 16.sp,
                    height: 1.29.h),
                TextNormal(
                  title: widget.salePriceText,
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

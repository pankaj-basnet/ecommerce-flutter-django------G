// D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\common\widgets\custom_button.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';

class GradientBtn extends StatelessWidget {
  const GradientBtn({
    super.key,
    this.onTap,
    this.btnWidth,
    required this.text,
    this.btnHieght,
    this.textSize,
    this.borderColor,
    this.radius,
    this.btnColor,
  });

  final void Function()? onTap;
  final double? btnWidth;
  final String text;
  final double? btnHieght;
  final double? textSize;
  final Color? borderColor;
  final double? radius;
  final Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth ?? ScreenUtil().screenWidth / 2,
        height: btnHieght ?? 25.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 6),
          color: btnColor ?? Kolors.kPrimaryLight,
          border: Border.all(width: 0.5.h, color: borderColor ?? Kolors.kWhite),
        ),
        child: Center(
          // child: Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 3.w),
          //   child: ReusableText(
          //       text: text,
          //       style: appStyle(
          //           textSize ?? 13, borderColor ?? Kolors.kWhite, fontweight)),
          // ),
        ),
      ),
    );
  }
}

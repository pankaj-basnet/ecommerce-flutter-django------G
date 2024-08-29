import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';

Future<dynamic> changeAddressBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: ScreenUtil().screenHeight,
        // decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 10.h,
            ),
            // Center(
            //     child: ReusableText(
            //         text: AppText.kCheckoutAddress,
            //         style: appStyle(16, Kolors.kPrimary, FontWeight.w500))),
            SizedBox(
              height: 10.h,
            ),
            Divider(color: Kolors.kGrayLight, thickness: 0.5.h),
            SizedBox(
              height: 10.h,
            ),
            // ReusableText(
            //   text: AppText.kCheckoutAddressText,
            //   style: appStyle(13, Kolors.kGray, FontWeight.w500),
            // ),
            SizedBox(
              height: 10.h,
            ),
            // SizedBox(
            //     height: ScreenUtil().screenHeight * 0.6,
            //     child: const CheckoutAddressSelection())
          ],
        ),
      );
    },
  );
}

// self note
// code written here as per lecture until time 32 mins
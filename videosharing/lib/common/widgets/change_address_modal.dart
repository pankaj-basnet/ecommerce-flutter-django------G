import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/common/utils/kstrings.dart';

Future<dynamic> changeAddressBottomSheet(BuildContext context) {
  return showModalBottomSheet(context: context, builder: (BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight,
      decoration: BoxDecoration(borderRadius: kRadiusTop),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: ReusableText(
              text: AppText.kCheckoutAddress,
              style: appStyle(16, Kolors.kPrimary, FontWeight.w500)
            )
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: Kolors.kGrayLight,
            thickness: 0.5.h,
          ),
          SizedBox(

          )
        ],
      ),

    );
  });
}

// self note
// code written here as per lecture until time 32 mins
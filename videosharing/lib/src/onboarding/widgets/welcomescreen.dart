import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/const/resource.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kolors.kWhite,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          children: [
            SizedBox(
              // height: 100.h,
              height: 30.h,
            ),
            Image.asset(R.ASSETS_IMAGES_GETSTARTED_JPEG),
            SizedBox(height: 30.h),
            Text(
              AppText.kWelcomeHeader,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Kolors.kPrimary,
                  fontWeight: FontWeight.bold),
              // style: appStyle(
              //   24,
              //   Kolors.kPrimary,
              //   FontWeight.bold,
              // ),
            ),
            SizedBox(
              width: ScreenUtil().screenWidth - 100,
              child: Text(
                AppText.kWelcomeMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 11,
                    color: Kolors.kGray,
                    fontWeight: FontWeight.normal),
                // style: appStyle(11, Kolors.kGray, FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GradientBtn(
              text: AppText.kGetStarted,
              onTap: () {},
              btnHieght: 35,
              radius: 20,
              btnWidth: ScreenUtil().screenWidth - 100,
            ),
          ],
        ),
      ),
    );
  }
}

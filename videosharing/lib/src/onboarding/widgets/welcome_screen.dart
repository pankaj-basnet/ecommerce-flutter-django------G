import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/resource.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key}); // this line absent on isn''

  @override // this line absent on isn''
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
            CustomButton(
              text: AppText.kGetStarted,
              btnHieght: 35,
              radius: 20,
              btnWidth: ScreenUtil().screenWidth - 100,
              onTap: () {
                ///TODO: uncomment the bool storage when the app is ready
                // Storage().setBool('firstOpen', true);

                context.go('/home');
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableText(
                  text: "Already have an account?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Kolors.kDark,
                      fontWeight: FontWeight.normal),
                  // style: appStyle(12, Kolors.kDark, FontWeight.normal),
                ),
                TextButton(
                    onPressed: () {
                      //navigate to login page
                      context.go('/login');
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

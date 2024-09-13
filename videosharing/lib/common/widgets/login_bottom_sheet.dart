import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

//          ====38mins-20s=====         first code changes          ==========        before project start
Future<dynamic> loginBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          // decoration: BoxDecoration(borderRadius: kRadiusTop),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: ReusableText(
                      text: AppText.kLogin,
                      // style: appStyle(16, Kolors.kPrimary, FontWeight.w500)),
                      style: TextStyle(
                          fontSize: 16,
                          color: Kolors.kPrimary,
                          fontWeight: FontWeight.w500))),
              // SizedBox(
              //   height: 10.h,
              // ),
              // Divider(
              //   color: Kolors.kGrayLight,
              //   thickness: 0.5.h,
              // ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                //  code corrected on 3hr24m ---- self code written---- correct this code later sn= {{written "before staring project"}}
                color: Kolors.kGrayLight,
                thickness: 0.5.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: ReusableText(
                      text: AppText.kLoginText,
                      // style: appStyle(14, Kolors.kGray, FontWeight.w500))),
                      style: TextStyle(
                          // fontSize: 14,
                          fontSize: 11,
                          color: Kolors.kGray,
                          fontWeight: FontWeight.w500))),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButton(
                  text: 'Proceed to Login',
                  onTap: () {
                    context.go("/login");
                  },
                  btnHieght: 35.h,
                  radius: 16,
                  btnWidth: ScreenUtil().screenWidth,
                ),
              )
            ],
          ),
        );
      });

  //          ====38mins-20s=====         first code changes          ==========        before project start    //>>
}

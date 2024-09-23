import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/const/resource.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      //   width: MediaQuery.of(context).size.width, //sn=
      // height: MediaQuery.of(context).size.height, //sn=
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Stack(
          children: [
            Image.asset(
              R.ASSETS_IMAGES_WISHLIST2_JPEG,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 120,
              left: 30,
              right: 30,
              child: Text(
                AppText.kOnboardWishListMessage,
                textAlign: TextAlign.center,
                // style: appStyle(11, Kolors.kGray, FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

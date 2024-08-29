// ignore_for_file: unused_local_variable
import 'package:videosharing/const/resource.dart';  // before starting project
import 'package:flutter/material.dart';  // before starting project
import 'package:flutter_screenutil/flutter_screenutil.dart'; // before starting project

class EmptyScreenWidget extends StatelessWidget {
  const EmptyScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center
      children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Image.asset(
          R.ASSETS_IMAGES_EMPTY_JPEG,
          height: ScreenUtil().screenHeight * 0.7,
          width: ScreenUtil().screenWidth,
        ),),
      ],
    );
  }
}
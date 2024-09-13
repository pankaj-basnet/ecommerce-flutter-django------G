
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/src/address/hooks/fetch_default_address.dart';
import 'package:videosharing/src/home/widgets/notification_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar222 extends HookWidget {
  const CustomAppBar222({super.key,});

  @override
  Widget build(BuildContext context) {
    // final results = fetchDefaultAdddress();
    // final address = results.address;

    return AppBar(
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(padding: EdgeInsets.only(left: 3.w),
          // child: ReusableText(
          //   text: "Location",
          //   style: appStyle(12, Kolors.kGray, FontWeight.normal)
          // ),),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              const Icon(
                Ionicons.location,
                size: 14,
                color: Kolors.kPrimary,
              ),
              SizedBox(
                width: 5.h,
              ),
              SizedBox(
                width: ScreenUtil().screenWidth * 0.7,
                child: Text('data'),
              )
            ],
          )
        ]
      ),
    );
  }
}
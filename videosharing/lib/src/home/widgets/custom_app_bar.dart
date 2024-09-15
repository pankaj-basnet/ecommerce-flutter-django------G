import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/src/home/widgets/notification_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: ReusableText(
              text: "Location",
              // style: appStyle(12, Kolors.kGray, FontWeight.normal ),
              style: TextStyle(
                  fontSize: 12,
                  color: Kolors.kGray,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            // height: 2.h,
            height: 5.h,
          ),
          Row(
            children: [
              Icon(
                Ionicons.location,
                size: 16,
                color: Kolors.kPrimary,
              ),
              SizedBox(
                width: ScreenUtil().screenWidth * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    "Please select a location",
                    style: TextStyle(
                      // fontSize: 14,
                      fontSize: 14, //sn=
                      color: Kolors.kDark,
                      fontWeight: FontWeight.w500,
                      // style: appStyle(14, Kolors.kDark, FontWeight.w500,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      actions: const [NotificationWidget()],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(38.h),
        // preferredSize: Size.fromHeight(55.h),
        child: GestureDetector(
          onTap: () {
            context.push('/search');
          },
          child: Padding(
            // padding: EdgeInsets.only(left: 5.w, right: 5.w), // mb= sn= doesnot make "less space"
            // padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.h), // mb= sn=
            // padding: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(
                horizontal: 12.h, vertical: 4.h), // mb= isn=
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Container(
                    height: 40.h,
                    // width: ScreenUtil().scaleWidth - 80.0, // doesnot work on lava  --- works on isn=
                    // width: ScreenUtil().scaleWidth,
                    width: 210.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Kolors.kGrayLight,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 1), // sn=
                      // padding: const EdgeInsets.all(8.0), // isn=
                      child: Row(
                        children: [
                          const Icon(
                            Ionicons.search,
                            size: 20,
                            color: Kolors.kPrimaryLight,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          ReusableText(
                              text: "Search Products",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Kolors.kGray,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Kolors.kPrimary,
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(
                    FontAwesome.sliders,
                    color: Kolors.kWhite,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

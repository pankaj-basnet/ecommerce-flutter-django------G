import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/common/widgets/help_bottom_sheet.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/src/auth/views/login_screen.dart';
import 'package:videosharing/src/profile/widget/tile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return LoginPage();
    }
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            CircleAvatar(
              radius: 35,
              backgroundColor: Kolors.kOffWhite,
              backgroundImage: NetworkImage(AppText.kProfilePic),
            ),
            SizedBox(
              height: 5.h,
              // height: 15.h, // isn=
            ),
            ReusableText(
                text: "agrim@gmail.com",
                // style: appStyle(11, Kolors.kGray, FontWeight.normal),
                style: TextStyle(
                  fontSize: 11,
                  color: Kolors.kGray,
                  fontWeight: FontWeight.normal,
                )),
            SizedBox(
              height: 5.h,
              // height: 15.h, // isn=
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Kolors.kOffWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ReusableText(
                  text: 'Agrim Bhujel',
                  style: TextStyle(
                    fontSize: 14,
                    color: Kolors.kDark,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
        Container(
          color: Kolors.kOffWhite,
          child: Column(
            children: [
              ProfileTileWidget(
                title: 'My Orders',
                leading: Octicons.checklist,
                onTap: () {
                  context.push('/orders');
                },
              ),
              ProfileTileWidget(
                title: 'Shipping Address',
                leading: MaterialIcons.location_pin,
                onTap: () {
                  context.push('/addresses');
                },
              ),
              ProfileTileWidget(
                title: 'Privacy Policy',
                leading: MaterialIcons.policy,
                onTap: () {
                  context.push('/policy');
                },
              ),
              ProfileTileWidget(
                title: 'Help Center',
                leading: AntDesign.customerservice,
                onTap: () => showHelpCenterBottomSheet(context),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
          ),
          child: CustomButton(
            text: "logout".toUpperCase(),
            // textColor: Colors.white,
            btnColor: Kolors.kRed,
            btnHieght: 35,
            // btnWidth: 150.w, // changing button width does not work {{sn=}}
            btnWidth:
                ScreenUtil().screenWidth / 2, // removing this works {{sn=}}
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
          text: AppText.kCategories,
          // style: appStyle(13, Kolors.kDark, FontWeight.w600),
          style: TextStyle(
              fontSize: 13, color: Kolors.kDark, fontWeight: FontWeight.w600),
        ),
        //    ******     See All     [ SEE ALL ]     ******
        //    ******     See All     [ SEE ALL ]     ******
        GestureDetector(
          onTap: () {
            context.push('/categories');
          },
          child: ReusableText(
            text: AppText.kViewAll,
            // style: appStyle(13, Kolors.kDark, FontWeight.w600),
            style: TextStyle(
                fontSize: 13,
                color: Kolors.kGray,
                fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/back_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: ReusableText(
            text: AppText.kPolicy,
            style: TextStyle(
              fontSize: 16,
              color: Kolors.kPrimary,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            SizedBox(
              height: 12.h,
            ),
            ReusableText(
                text: AppText.kCancelation,
                style: TextStyle(
                    fontSize: 15,
                    color: Kolors.kPrimary,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 12.h,
            ),
            Text(AppText.kAppCancelationPolicy,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 13,
                    color: Kolors.kGray,
                    fontWeight: FontWeight.normal)),
            SizedBox(
              height: 12.h,
            ),
            ReusableText(
                text: AppText.kTerms,
                style: TextStyle(
                    fontSize: 15,
                    color: Kolors.kPrimary,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 12.h,
            ),
            Text(AppText.kAppTerms,
                style: TextStyle(
                    fontSize: 13,
                    color: Kolors.kGray,
                    fontWeight: FontWeight.normal)),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/products/controllers/colors_sizes_notifier.dart';
import 'package:videosharing/src/products/controllers/product_notifier.dart';

class ColorSelectionWidget extends StatelessWidget {
  const ColorSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorSizesNotifier>(builder: (context, controller, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            context.read<ProductNotifier>().product!.colors.length, (i) {
          String c = context.read<ProductNotifier>().product!.colors[i];
          return GestureDetector(
            onTap: () {
              controller.setColor(c);
            },
            child: Container(
              // height: 30.h,
              // width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                color:
                    controller.color == c ? Kolors.kPrimary : Kolors.kGrayLight,
                // borderRadius: BorderRadius.circular(5),
                borderRadius: kRadiusAll,
              ),
              child: ReusableText(
                text: c,
                // style: appStyle(12, Kolors.kPrimary, FontWeight.normal),
                style: TextStyle(
                  fontSize: 14,
                  // fontSize: 12,//isn=
                  color: Kolors.kWhite,
                  // fontWeight: FontWeight.normal,//isn=
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }),
      );
    });
  }
}

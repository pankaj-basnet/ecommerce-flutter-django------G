import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key, required this.price, this.onPressed});

  final String price;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      color: Kolors.kPrimaryLight.withOpacity(0.6),
      // color: Colors.white.withOpacity(0.6), // isn=
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0, 12.w, 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.h,
              width: 120.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: 'Total Price',
                      // style: appStyle(14, Kolors.kWhite, FontWeight.normal),
                      style: TextStyle(
                        fontSize: 14,
                        color: Kolors.kWhite,
                        // color: Kolors.kGray, // isn=
                        fontWeight: FontWeight.normal,
                      )),
                  ReusableText(
                      text: "\$ $price",
                      style: TextStyle(
                          fontSize: 16,
                          color: Kolors.kDark,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,

              // style: ButtonStyle(backgroundColor: Kolors.kPrimary,),
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.amber,
              //   textStyle: TextStyle(
              //     backgroundColor: Colors.green,
              //   ),
              // ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Kolors.kPrimary),
                // backgroundColor: WidgetStateProperty.all(Kolors.kPrimary), // WidgetStateProperty causes error rsn= , use MaterialStateProperty rrr=
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesome.shopping_bag,
                    size: 16,
                    color: Kolors.kWhite,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  ReusableText(
                      text: 'Checkout',
                      style: TextStyle(
                        fontSize: 14,
                        color: Kolors.kWhite,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

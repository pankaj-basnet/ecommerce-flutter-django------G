import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/categories/controllers/category_notifier.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: SizedBox(
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // children: List.generate(categories.length, (index, i) { return Container();}),
          children: List.generate(categories.length, (i) {
            final category = categories[i];
            return GestureDetector(
              onTap: () {
                context
                    .read<CategoryNotifier>()
                    .setCategory(category.title, category.id);
                context.push('/category');
              },
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Kolors.kSecondaryLight,
                      child: Padding(
                        padding: EdgeInsets.all(4.h),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            category.imageUrl,
                            width: 40.w,
                            height: 40.h,
                          ),
                        ),
                      ),
                    ),
                    ReusableText(
                      text: category.title,
                      // style: appStyle(12, Kolors.kGray, FontWeight.normal,),
                      style: TextStyle(
                        fontSize: 12,
                        color: Kolors.kGray,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

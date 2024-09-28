import 'package:flutter/material.dart';              // isn=
import 'package:flutter_hooks/flutter_hooks.dart';              // isn=
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';              // isn=
import 'package:go_router/go_router.dart';              // isn=
import 'package:provider/provider.dart';              // isn=
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/common/widgets/shimmers/categories_shimmer.dart';
// import 'package:videosharing/const/constants.dart'; //isn = {removed because categories comes from fetch_home_categories.dart }
import 'package:videosharing/src/categories/controllers/category_notifier.dart';
import 'package:videosharing/src/categories/hook/fetch_home_categories.dart';

class HomeCategoriesList extends HookWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final results = fetchHomeCategories();
    final categories = results.categories;
    final isLoading = results.isLoading;
    final error = results.error;
    
    if (isLoading) {
      return const CatergoriesShimmer();
    }

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

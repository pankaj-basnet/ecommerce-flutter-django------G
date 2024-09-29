import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/back_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/common/widgets/shimmers/list_shimmer.dart';
// import 'package:videosharing/const/constants.dart'; // categories from constants overriden in build function --- fetchCategories();
import 'package:videosharing/src/categories/controllers/category_notifier.dart';
import 'package:videosharing/src/categories/hook/fetch_categories.dart';
import 'package:videosharing/src/categories/models/categories_model.dart';

class CategoriesPage extends HookWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final results = fetchCategories();
    final categories = results.categories;
    final isLoading = results.isLoading;
    final error = results.error;

    // if (isLoading) {     //   // {{many code added on isn {sn=}} // code may be not working *********

    //   return Scaffold(
    //     body: ListView.builder(
    //       itemCount: categories.length,
    //       itemBuilder: (context, i) {
    //         final category = categories[i];

    //         return ListTile(
    //           // onTap: () {
    //           //   // go to category page
    //           //   context.read<CategoryNotifier>().setCategory(category.title, category.id);
    //           //   context.push('/category');
    //           // },
    //           leading: CircleAvatar(
    //             backgroundColor: Kolors.kSecondaryLight,
    //             radius: 18,
    //             child: Padding(
    //                 // padding: EdgeInsets.all(8.h),
    //                 padding: EdgeInsets.all(4.h),
    //                 child: const Shimmer(
    //                   gradient: LinearGradient(
    //                     begin: Alignment.topLeft,
    //                     end: Alignment(0.8, 1),
    //                     colors: <Color>[
    //                       Color(0xff1f005c),
    //                       Color(0xff5b0060),
    //                       Color(0xff870160),
    //                       Color(0xffac255e),
    //                       Color(0xffca485c),
    //                       Color(0xffe16b5c),
    //                       Color(0xfff39060),
    //                       Color(0xffffb56b),
    //                     ], // Gradient from ),
    //                   ),
    //                   child: CircleAvatar(),
    //                 )),
    //           ),
    //           title: ReusableText(
    //             text: category.title,
    //             style: TextStyle(
    //               fontSize: 12,
    //               color: Kolors.kGray,
    //               fontWeight: FontWeight.normal,
    //             ),
    //             // style: appStyle(12, Kolors.kGray, FontWeight.normal),
    //           ),
    //           trailing: const Icon(
    //             MaterialCommunityIcons.chevron_double_right,
    //             size: 30,
    //           ),
    //         );
    //       },
    //     ),
    //   );
    // }

    if (isLoading) { // {scaffold x-cross on white background due to this "isLoading" --- shimmer also not working sn=}
      return const Scaffold(
        body: ListShimmer(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 50.w), // sn= using padding widget instead of "Center"
          child: ReusableText(
            text: AppText.kCategories,
            // style: ReusableText(text: AppText.kCategories, style: appStyle(16, Kolors.kPrimary, FontWeight.bold)),
            style: TextStyle(
              fontSize: 16,
              color: Kolors.kPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, i) {
          final category = categories[i];

          return ListTile(
            onTap: () {
              // go to category page
              context
                  .read<CategoryNotifier>()
                  .setCategory(category.title, category.id);
              context.push('/category');
            },
            leading: CircleAvatar(
              backgroundColor: Kolors.kOffWhite,
              // backgroundColor: Kolors.kSecondaryLight, //isn=
              radius: 25,
              // radius: 18, // isn=
              child: Padding(
                // padding: EdgeInsets.all(8.h),
                padding: EdgeInsets.all(4.h),
                child: Image.network(category.imageUrl),
                // child: SvgPicture.network(category.imageUrl), // causing error --- used instead Image.network --- sn=
              ),
            ),
            title: ReusableText(
              text: category.title,
              style: TextStyle(
                fontSize: 12,
                color: Kolors.kGray,
                fontWeight: FontWeight.normal,
              ),
              // style: appStyle(12, Kolors.kGray, FontWeight.normal),
            ),
            trailing: const Icon(
              MaterialCommunityIcons.chevron_double_right,
              size: 18,
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/back_button.dart';
import 'package:videosharing/common/widgets/login_bottom_sheet.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/categories/controllers/category_notifier.dart';
import 'package:videosharing/src/categories/widgets/products_by_category.dart';
import 'package:videosharing/src/products/widgets/staggered_tile_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // String? accessToken =
    //     Storage().getString('accessToken'); //isn= {not necessary anymore}

    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: ReusableText(
            text: context.read<CategoryNotifier>().category,
            // style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
            style: TextStyle(
                fontSize: 16,
                color: Kolors.kPrimary,
                fontWeight: FontWeight.bold)),
      ),
      body: ProductsByCategory(),
    );
  }
}

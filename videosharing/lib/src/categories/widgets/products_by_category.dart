import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/widgets/login_bottom_sheet.dart';
import 'package:videosharing/common/widgets/shimmers/list_shimmer.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/categories/controllers/category_notifier.dart';
import 'package:videosharing/src/categories/hook/fetch_products_by_category.dart';
import 'package:videosharing/src/products/widgets/staggered_tile_widget.dart';

class ProductsByCategory extends HookWidget {
  const ProductsByCategory({
    super.key,
  });

  // final String? accessToken; // isn = {not needed anymore}

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    final results = fetchProductsByCategories(context.read<CategoryNotifier>().id);
    final products = results.products;
    final isLoading = results.isLoading;
    final error = results.error;

    if (isLoading) {
      return const Scaffold(
        body: ListShimmer(),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: StaggeredGrid.count(
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 4,
        children: List.generate(products.length, (i) {
          // print("-------- doing List.generate ---- product no:  ${i} ---------");
          final double mainAxisCellCount = 2.4; //sn=
          // final double mainAxisCellCount = (i % 2 == 0 ? 2.17 : 2.4); //isn=
          final product = products[i];
          return StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: mainAxisCellCount,
              child: StaggeredTileWidget(
                onTap: () {
                  if (accessToken == null) {
                    loginBottomSheet(context);
                  } else {
                    // handle wishlist functionality
                  }
                },
                product: product,
                i: i,
              ));
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'; // isn= {sn= HookWidget}
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart'; // isn= {sn= context.read}
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/widgets/login_bottom_sheet.dart';
import 'package:videosharing/common/widgets/shimmers/list_shimmer.dart'; // isn= {sn= ListShimmer()}
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/home/controllers/home_tab_notifier.dart'; // isn= {sn= HomeTabNotifier}
import 'package:videosharing/src/products/hooks/fetch_products.dart'; // isn= {sn= fetchProducts}
import 'package:videosharing/src/products/widgets/staggered_tile_widget.dart';

class ExploreProducts extends HookWidget {
  const ExploreProducts({super.key});


  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

       int cfeCountExploreProducts = 0; // sn=
       print(' .......... $cfeCountExploreProducts .......... '); // sn=




    
    final results = fetchProducts(context.watch<HomeTabNotifier>().queryType);

    cfeCountExploreProducts += 1; // sn= ---------------------------------------
       print(' .......... $cfeCountExploreProducts .......... '); // sn= ------------


    final products = results.products;
    final isLoading = results.isLoading;
    final error = results.error;

    // final refetch = results.refetch; //isn= {deleted --- time 1hr-15m V2}


    // context.read<HomeTabNotifier>().setRefetch(() => refetch); // isn= { problem with tabs isn=}
        // context.read<HomeTabNotifier>().setRefetch(refetch); //sn=


    cfeCountExploreProducts += 1; // sn=
       print(' .......... $cfeCountExploreProducts .......... '); // sn=

 if (isLoading) {  // {scaffold x-cross on white background due to this "isLoading" --- shimmer also not working {products_by_category.dart} sn=}
      // return const Scaffold(
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: const ListShimmer(),
      );
    }

        // context.read<HomeTabNotifier>().setRefetch(refetch); //isn=

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
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

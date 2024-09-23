import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/widgets/login_bottom_sheet.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/products/widgets/staggered_tile_widget.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

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

import 'package:flutter/material.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/src/products/widgets/explore_products.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: ReusableText(
                text: AppText.kWishlist,
                // style: appStyle( 16, Kolors.kPrimary, FontWeight.bold,),
                style: TextStyle(
                  fontSize: 16,
                  color: Kolors.kPrimary,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const ExploreProducts(),
        ));
  }
}

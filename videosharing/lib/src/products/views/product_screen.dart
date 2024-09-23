import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/back_button.dart';
import 'package:videosharing/common/widgets/error_modal.dart';
import 'package:videosharing/common/widgets/login_bottom_sheet.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/products/controllers/colors_sizes_notifier.dart';
import 'package:videosharing/src/products/controllers/product_notifier.dart';
import 'package:videosharing/src/products/widgets/color_selection_widget.dart';
import 'package:videosharing/src/products/widgets/expandable_text.dart';
import 'package:videosharing/src/products/widgets/product_bottom_bar.dart';
import 'package:videosharing/src/products/widgets/product_sizes_widget.dart';
import 'package:videosharing/src/products/widgets/similar_products.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.productId});

  final String productId;
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // not used ----- isn=
  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    // productNotifier = ProductNotifier();  //   no need to create variable --- "ProductNotifier" will be passed to --->  builder: (..., productNotifier, ...) {
    return Consumer<ProductNotifier>(
        builder: (context, productNotifier, child) {
      // the parameter name 'ProductNotifier' matches a visible type name. Try adding a name for the parameter or changing the parameter name to not match an existing type.
      // final aaa = ProductNotifier.product; // Instance member 'product' can't be accessed using static access ---- the parameter name 'ProductNotifier' matches a visible
      // print(aaa);
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 320.h,
              collapsedHeight: 65.h,
              floating: false,
              pinned: true,
              leading: const AppBackButton(),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Kolors.kSecondaryLight,
                      child: Icon(
                        AntDesign.heart,
                        color: Kolors.kRed,
                        size: 18,
                      ),
                    ),
                  ),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background: SizedBox(
                  height: 415.h,
                  child: ImageSlideshow(
                    indicatorColor: Kolors.kPrimaryLight,
                    // onPageChanged: (p) {},
                    autoPlayInterval: 15000,
                    isLoop: productNotifier.product!.imageUrls.length > 1
                        ? true
                        : false,
                    children: List.generate(
                        productNotifier.product!.imageUrls.length, (i) {
                      return CachedNetworkImage(
                        placeholder: placeholder, // constant.dart
                        errorWidget: errorWidget, // constant.dart
                        height: 415.h,
                        imageUrl: productNotifier.product!.imageUrls[i],
                        fit: BoxFit.fitWidth,
                        // fit: BoxFit.cover, //isn=
                      );
                    }),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                        text:
                            productNotifier.product!.clothesType.toUpperCase(),
                        // style: appStyle(13,Kolors.kGray, FontWeight.w600)
                        style: TextStyle(
                          fontSize: 13,
                          color: Kolors.kGray,
                          fontWeight: FontWeight.w600,
                        )),
                    Row(
                      children: [
                        Icon(
                          AntDesign.star,
                          color: Kolors.kGold,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ReusableText(
                            text: productNotifier.product!.ratings
                                .toStringAsFixed(1),
                            style: TextStyle(
                              fontSize: 13,
                              color: Kolors.kGray,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                  text: productNotifier.product!.title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Kolors.kDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.h),
                child:
                    ExpandableText(text: productNotifier.product!.description),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Divider(
                  thickness: 0.5.h,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                    text: "Select Sizes",
                    // style: appStyle(16, Kolors.kDark, FontWeight.w600),
                    style: TextStyle(
                      fontSize: 14,
                      color: Kolors.kDark,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductSizesWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                    text: "Select Color",
                    // style: appStyle(16, Kolors.kDark, FontWeight.w600),
                    style: TextStyle(
                      fontSize: 14,
                      color: Kolors.kDark,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColorSelectionWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                    text: "Similar Products",
                    // style: appStyle(16, Kolors.kDark, FontWeight.w600),
                    style: TextStyle(
                      fontSize: 14,
                      color: Kolors.kDark,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            const SliverToBoxAdapter(
              child: SimilarProducts(),
            ),
          ],
        ),
        bottomNavigationBar: ProductBottomBar(
          onPressed: () {
            if (accessToken == null) {
              loginBottomSheet(context);
            } else {
              if (context.read<ColorSizesNotifier>().color == '' ||
                  (context.read<ColorSizesNotifier>().sizes == '')) {
                showErrorPopup(context, AppText.kCartErrorText,
                    "Error Adding to Cart", true);
              } else {
                ///TODO: CART LOGIC
              }
            }
            print('ADD TO CART');
          },
          price: productNotifier.product!.price.toStringAsFixed(2),
        ),
      );
    });
  }
}

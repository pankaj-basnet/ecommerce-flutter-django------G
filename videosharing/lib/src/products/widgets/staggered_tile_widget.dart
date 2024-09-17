import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/src/products/controllers/product_notifier.dart';
import 'package:videosharing/src/products/models/products_model.dart';

class StaggeredTileWidget extends StatelessWidget {
  const StaggeredTileWidget(
      {super.key,
      required this.i,
      required this.product,
      this.onTap}); // dart or flutter extension suggestion --- shortcut to "add final field formal parameters"

  final int i;
  final Products product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // String? accessToken = Storage().getString('accessToken');
    return GestureDetector(
      onTap: () {
        context.read<ProductNotifier>().setProduct(product);
        context.push('/product/${product.id}');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Kolors.kOffWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: i % 2 == 0 ? 100.h : 120.h, // isn=
                // height: i % 2 == 0 ? 163.h : 180.h, // isn=
                color: Kolors.kPrimary,
                child: Stack(
                  children: [
                    Image.network(product.imageUrls[0],
                        height: i % 2 == 0 ? 100.h : 120.h, fit: BoxFit.cover),
                    // height: i % 2 == 0 ? 120.h : 140.h, fit: BoxFit.cover), //sn=
                    // height: i % 2 == 0 ? 163.h : 180.h, fit: BoxFit.cover,), //isn=

                    ///TODO: handle favorites

                    Positioned(
                        right: 10.h,
                        top: 10.h,
                        child: GestureDetector(
                          onTap: onTap,             // <------- "onTap" passed from "ExploreProducts() --- StaggeredTileWidget()"
                          child: const CircleAvatar(
                            backgroundColor: Kolors.kSecondaryLight,
                            child: Icon(
                              AntDesign.heart,
                              color: Kolors.kRed,
                              size: 18,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        // style: appStyle(13, Kolors.kDark, FontWeight.w600),
                        style: TextStyle(
                          fontSize: 13,
                          color: Kolors.kDark,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          AntDesign.star,
                          color: Kolors.kGold,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ReusableText(
                            text: product.ratings.toStringAsFixed(1),
                            // style: appStyle(13, Kolors.kGray, FontWeight.normal),
                            style: TextStyle(
                              fontSize: 13,
                              color: Kolors.kGray,
                              fontWeight: FontWeight.normal,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: ReusableText(
                    text: '\$ ${product.price.toStringAsFixed(2)}',
                    // style: appStyle(17, Kolors.kDark, FontWeight.w500,),
                    style: TextStyle(
                      fontSize: 17,
                      color: Kolors.kDark,
                      fontWeight: FontWeight.w500,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

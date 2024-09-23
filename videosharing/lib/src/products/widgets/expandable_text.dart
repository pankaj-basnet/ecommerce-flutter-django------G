import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/src/products/controllers/product_notifier.dart';

class ExpandableText extends StatelessWidget {
  const ExpandableText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: TextAlign.justify,
          maxLines: !context.watch<ProductNotifier>().description ? 3 : 10,
          // style: appStyle(13, Kolors.kGray, FontWeight.normal),
          style: TextStyle(
            fontSize: 13,
            color: Kolors.kGray,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                context.read<ProductNotifier>().setDescription();
              },
              child: Text(
                !context.watch<ProductNotifier>().description
                    ? "View more"
                    : "view less",
                style: TextStyle(
                  fontSize: 11,
                  color: Kolors.kPrimaryLight,
                  fontWeight: FontWeight.normal,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

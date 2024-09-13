import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/back_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/src/categories/controllers/category_notifier.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackButton(),
        title: ReusableText(
            text: context.read<CategoryNotifier>().category,
            // style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
            style: TextStyle(
                fontSize: 16,
                color: Kolors.kPrimary,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

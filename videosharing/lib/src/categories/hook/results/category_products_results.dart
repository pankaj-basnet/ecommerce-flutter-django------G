// check filename later  // D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\results\category_products_results.dart

import 'package:flutter/material.dart';
// import 'package:videosharing/src/categories/models/categories_model.dart'; //isn= not needed anymore
import 'package:videosharing/src/products/models/products_model.dart';

class FetchProduct {
  final List<Products> products;
  final bool isLoading;
  final String? error;
  final VoidCallback refetch;

  FetchProduct({
    required this.products,
    required this.isLoading,
    required this.error,
    required this.refetch,
  });
}

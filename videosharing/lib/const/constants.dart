import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/const/resource.dart';
import 'package:videosharing/src/categories/models/categories_model.dart';

LinearGradient kGradient = const LinearGradient(colors: [
  Kolors.kPrimaryLight, // sn= later make Kcolors in kcolors.dart
  Kolors.kWhite,
]);

// self note
// code written here as per lecture until time 32 mins
// code written again ------ not before 3hr42min

LinearGradient kBtnGradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight, // sn= later make Kcolors in kcolors.dart
    Kolors.kWhite,
  ],
); // isn= --- line 32 *****************

BorderRadiusGeometry kClippingRadius = const BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
); // isn= --- line 37 *****************

BorderRadiusGeometry kRadiusAll =
    BorderRadius.circular(12); // isn= --- line 39 ****************************

BorderRadiusGeometry kRadiusTop = const BorderRadius.only(
  topLeft: Radius.circular(9),
  topRight: Radius.circular(9),
); // isn=

BorderRadiusGeometry kRadiusBottom = const BorderRadius.only(
    topLeft: Radius.circular(12), topRight: Radius.circular(12));

// Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
//       'assets/images/placeholder.webp',
//       fit: BoxFit.cover,
//     );
Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
      // 'assets/images/e-shopping cart 9-6--w-.webp', // removed by isn=
      R.ASSETS_IMAGES_PLACEHOLDER_JPEG,

      fit: BoxFit.cover,
    );

Widget Function(BuildContext, String, Object)? errorWidget =
    (p0, p1, p2) => Image.asset(
          // 'assets/images/error---2-2--p-----Screenshot-.png', // removed by isn=
          R.ASSETS_IMAGES_PLACEHOLDER_JPEG,
          fit: BoxFit.cover,
        );

List<String> images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY337taNjiPZPeruMu83HQd4-TvpcpDV-9iA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqvBrKVc0CI_wbGykF64-ApAqtuMsqFAg5JA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5QG8DZWBDWc4NiY79bg6-4zdPTwTikBAaRQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoJNjM_x-YoEgoWJDKALfyV9yg8pyd8aMrVg&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9HrU2Xgu9bONeP5HE8vOQatTgpUviURxk4g&s",
];
List<Categories> categories = [
  Categories(
      title: "Pants",
      id: 1,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ43ALATMTeI1fXfhss5NSg9qUhHyh-NHLD1w&s"),
  Categories(
      title: "T-Shirts",
      id: 5,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"),
  Categories(
      title: "Sneakers",
      id: 3,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"
          ),
  Categories(
      title: "Dresses",
      id: 2,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSahSAnVAHyIJb99hCuKZGnOMijUlRUvMRg4g&s"
          ),
  Categories(
      title: "Jackets",
      id: 4,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYqAtoZvG9TrOky3QcTRQizCNyVgJURZqKdw&s"
          ),
];

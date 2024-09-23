import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/const/resource.dart';
import 'package:videosharing/src/products/models/products_model.dart';
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
  // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY337taNjiPZPeruMu83HQd4-TvpcpDV-9iA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqvBrKVc0CI_wbGykF64-ApAqtuMsqFAg5JA&s",
  // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5QG8DZWBDWc4NiY79bg6-4zdPTwTikBAaRQ&s",
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
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"),
  Categories(
      title: "Dresses",
      id: 2,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSahSAnVAHyIJb99hCuKZGnOMijUlRUvMRg4g&s"),
  Categories(
      title: "Jackets",
      id: 4,
      imageUrl:
          // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
          // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pKdTq7-lUUtNMf3IBew1An2_QZq9Tv-UVQ&s"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYqAtoZvG9TrOky3QcTRQizCNyVgJURZqKdw&s"),
];

// var products = [
//   {
//     "id": 3,
//     "title": "Converse Chuck Taylor All Star",
//     "price": 60.0,
//     "description":
//         "The Classic Chuck Taylor All Star Sneaker from Converse, featuring a timeless design and comfort ooo...",
//     "is_featured": true,
//     "clothesType": "kids",
//     "ratings": 4.333333333333333,
//     "colors": ["black", "white", "red"],
//     "imageUrls": [    ],
//     "sizes": ["7", "8", "9", "10", "11"],
//     "created_at": "2024-06-06T07:57:45Z",
//     "category": 3,
//     "brand": 1
//   },
//   {
//     "id": 1,
//     "title": "LV Trainers",
//     "price": 798.88,
//     "description":
//         "LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium material ooo...",
//     "is_featured": true,
//     "clothesType": "women",
//     "ratings": 4.5,
//     "colors": ["white", "black", "red"],
//     "imageUrls": [    ],
//     "sizes": ["7", "8", "9", "10", "11"],
//     "created_at": "2024-06-06T07:49:15Z",
//     "category": 3,
//     "brand": 1
//   },
//   {
//     "id": 2,
//     "title": "Adidas Ultraboost",
//     "price": 180.0,
//     "description":
//         "experience the comfort and energy return of the Ultraboost, designed for running ooo...",
//     "is_featured": true,
//     "clothesType": "unisex",
//     "ratings": 5.0,
//     "colors": ["navy", "grey", "blue"],
//     "imageUrls": [    ],
//     "sizes": ["7", "8", "9", "10", "11"],
//     "created_at": "2024-06-06T07:55:20Z",
//     "category": 3,
//     "brand": 1
//   }
// ];

List<Products> products = [
  Products(
      id: 3,
      title: "Converse Chuck Taylor All Star",
      price: 60.0,
      description:
          """The Classic Chuck Taylor All Star Sneaker from Converse, featuring a timeless design and comfort. From the coastline to the promenade, give your style a spring-time vibe with the Chuck Taylor All Star Shoreline slip-ons from Converse!
Unlined with a cushioned insole for all-day comfort.
Slip-on construction with removable laces for a personalized look.
Elastic collar with heel pull tab for a close, comfy fit.
Signature Chuck Taylor All Star rubber toe box, textured toe bumper, contrast sidewall trim, medial-side air vent portholes and All Star heel patch.
Rubber midsole.
Classic Converse diamond-pattern rubber outsole.    ooo...""",
      isFeatured: true,
      clothesType: "kids",
      ratings: 4.333333333333333,
      colors: ["black", "white", "red"],
      imageUrls: [
        "https://m.media-amazon.com/images/I/613KQPL3SjL._AC_SY675_.jpg",
        "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/26516118/2024/3/20/aa466658-e09b-48b1-8542-9aefafa84a091710923994819-ADIDAS-Men-Sports-Shoes-8721710923993770-1.jpg",
        // "https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/26027424/2023/11/29/edb7618d-594a-4525-9f26-9355fd7d82cb1701243904030-Puma-Mile-on-3821701243903773-1.jpg",
        // "https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/16166922/2021/12/27/f7733a3e-91cb-4e8c-af58-b54dd26a0e951640583574057-House-of-Pataudi-Men-Tan-Brown-Handcrafted-Leather-Formal-Mo-1.jpg",
        // "https://mcfarlandsshoerepair.com/wp-content/uploads/2023/08/how-to-buy-shoes-1024x352.jpg",
        // "https://img.lazcdn.com/3rd/q/aHR0cHM6Ly9zdGF0aWMtMDEuZGFyYXouY29tLm5wL3AvNmI1NjlmMDU3MGRjNjlkMDU4NzlhNmQ0N2ZkYzdjNmQuanBn_400x400q75.png_.webp",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:57:45Z"),
      category: 3,
      brand: 1),
  Products(
      id: 1,
      title: "LV Trainers",
      price: 798.88,
      description:
          "The Louis Vuitton Trainer appeared for the first time during Virgil Abloh’s debut Spring/Summer 2019 show for the house. Inspired by heritage basketball sneakers, Louis Vuitton’s Monogram is embossed on the calf leather upper, with LV initials hitting the tongue, side and heel. An LV signature adorns the outsole, while Monogram flowers are featured on the rubber midsole.",
      isFeatured: true,
      clothesType: "women",
      ratings: 4.5,
      colors: ["white", "black", "red"],
      imageUrls: [
        "https://m.media-amazon.com/images/I/61+lelZOsWL._AC_SY675_.jpg",
        "https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/16166922/2021/12/27/f7733a3e-91cb-4e8c-af58-b54dd26a0e951640583574057-House-of-Pataudi-Men-Tan-Brown-Handcrafted-Leather-Formal-Mo-1.jpg",

        "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/29885227/2024/7/29/3a2f52b6-2be9-4d90-9714-e2defe60bfb91722240925053-ADIDAS-Men-Laufen-Speed-Running-Shoes-5821722240924701-1.jpg",
        // "https://rukminim2.flixcart.com/image/400/450/xif0q/shoe/7/z/r/8-white-leaf-8-urbanbox-white-black-original-imagvgf4cuzs2hrw.jpeg?q=90&crop=false",
        // "https://img.lazcdn.com/3rd/q/aHR0cHM6Ly9zdGF0aWMtMDEuZGFyYXouY29tLm5wL3AvNGNiM2IzZjU1NTIzMWVhNDY5YmI0NjJmM2NmZWRhZGUuanBn_400x400q75.png_.webp",
        // "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png",
        // "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/a13c263c-12b7-499f-9f77-848cd0600cf4/NIKE+INTERACT+RUN.png",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
        // "https://images-cdn.ubuy.co.in/656b8e66fce2b162f83819f5-nike-men-s-xxair-max-excee-running.jpgx",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:49:15Z"),
      category: 3,
      brand: 1),
  Products(
      id: 2,
      title: "Adidas Ultraboost",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running. Made from hundreds of foam capsules welded together, Boost technology delivered 20% more energy return than EVA rubber, the midsole standard ooo...",
      isFeatured: true,
      clothesType: "unisex",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://m.media-amazon.com/images/I/61-G0uVoe1L._AC_SY675_.jpg",
        "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/29534114/2024/8/26/f838005a-221f-4a45-96e7-26e1a0868b121724647331875-New-Balance-680v7-Running-Shoes-8931724647331547-1.jpg",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm7Xz_mjMP3bM0unRifWEbD3qjvbJGS28K9Q&s",
        // "https://img.lazcdn.com/3rd/q/aHR0cHM6Ly9zdGF0aWMtMDEuZGFyYXouY29tLm5wL3AvNDNkOGZlZWE4MDYwZTcwZjc0YTY1MTgzOWE3MjE4MTQuanBn_400x400q75.png_.webp",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
        // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1)
];

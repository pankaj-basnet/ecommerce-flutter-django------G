//  also check --- lib\src\categories\models\categories_model copy.dart


import 'package:meta/meta.dart';
import 'dart:convert';


List<Categories> categoriesFromJson(String str) => List<Categories>.from(json.decode(str).map((x) => Categories.fromJson(x)));

String categoriesToJson(List<Categories> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categories {
    // String title;
    // int id;
    // String imageUrl;

    final String title;
    final int id;
    final String imageUrl;


    Categories({
        required this.title,
        required this.id,
        required this.imageUrl,
    });

    factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        title: json["title"],
        id: json["id"],
        imageUrl: json["imageUrl"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
        "imageUrl": imageUrl,
    };
}

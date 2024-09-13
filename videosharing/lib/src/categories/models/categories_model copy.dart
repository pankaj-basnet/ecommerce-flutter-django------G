//      =========       data copied from """https://app.quicktype.io"""       =========       time 4hr31m13s

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    List<Categ> categ;

    Welcome({
        required this.categ,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        categ: List<Categ>.from(json["categ"].map((x) => Categ.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "categ": List<dynamic>.from(categ.map((x) => x.toJson())),
    };
}

class Categ {
    String title;
    int id;
    String imageUrl;

    Categ({
        required this.title,
        required this.id,
        required this.imageUrl,
    });

    factory Categ.fromJson(Map<String, dynamic> json) => Categ(
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



// ==================================================================================================
// ==================================================================================================
// ==================================================================================================
//      ========      DATA used in   """https://app.quicktype.io"""       =============

// {
//   "categ": [
//    {
//     "title": "Pants",
//     "id": 1,
//     "imageUrl": "https://m.media-amazon.com/images/I/81CW6tC3XjL.__AC_SX300_SY300_QL70_FMwebp_.jpg"
//   },
//   {
//     "title": "T-Shirts",
//     "id": 5,
//     "imageUrl": "https://m.media-amazon.com/images/I/51ulmT3YUZL._AC_SX522_.jpg"
//   },
//   {
//     "title": "Sneakers",
//     "id": 3,
//     "imageUrl": "https://m.media-amazon.com/images/I/41Jhn7-62eL._AC_SY695_.jpg"
//   },
//   {
//     "title": "Dresses",
//     "id": 2,
//     "imageUrl": "https://m.media-amazon.com/images/I/71Wm1P0x8AL._AC_SX569_.jpg"
//   },
//   {
//     "title": "Jackets",
//     "id": 4,
//     "imageUrl": "https://m.media-amazon.com/images/I/61o+IG4jWhL._AC_SX569_.jpg"
//   }
// ]
// }


// ==================================================================================================
// ==================================================================================================
// ==================================================================================================
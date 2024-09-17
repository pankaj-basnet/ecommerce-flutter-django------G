import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll, //sn=
      // borderRadius: 0, // error
      child: Stack(
        children: [
          SizedBox(
            // height: ScreenUtil().screenHeight * 0.16, // isn=
            // height: ScreenUtil().screenHeight * 0.23, //sn=  //sn= need more bigger height for button
            height: ScreenUtil().screenHeight * 0.28, //sn=
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
              indicatorColor: Kolors.kPrimaryLight,
              onPageChanged: (p) {
                // print(p);
              },
              // autoPlayInterval: 5000, // autoplay pics slide sn=
              autoPlayInterval: 15000, // autoplay pics slide sn=
              // isLoop: true,           // autoplay pics slide sn=
              children: List.generate(images.length, (i) {
                return CachedNetworkImage(
                  placeholder: placeholder,
                  errorWidget: errorWidget,
                  imageUrl: images[i],
                  fit: BoxFit.cover,
                );
              }),
            ),
          ),
          Positioned(
              child: SizedBox(
            // height: ScreenUtil().screenHeight * 0.16,
            height: ScreenUtil().screenHeight * 0.23,
            width: ScreenUtil().screenWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ReusableText(text: AppText.kCollection, style: appStyle(20, Kolors.kDark, FontWeight.w600)),
                  ReusableText(
                      text: AppText.kCollection,
                      style: TextStyle(
                          fontSize: 20,
                          color: Kolors.kDark,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Discount 50% off \nthe first transaction',
                    // style: appStyle(14, Kolors.kDark.withOpacity(0.6), FontWeight.normal),
                    style: TextStyle(
                      fontSize: 14,
                      color: Kolors.kDark.withOpacity(0.6),
                      // color: Kolors.kPrimaryLight,  //sn
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                    // height: 5.h, //sn ---- to remove error
                  ),
                  CustomButton(
                    text: "Shop Now",
                    btnWidth: 150.w,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

// List<String> images = [                      // <---- doesnot work
//   "images/thrift/tinypng/5.-POCOOpening.jpeg",
//   "images/thrift/tinypng/Peterborough-Christmas-web-image-2023.jpg",
//   "images/thrift/tinypng/Thrift_Store-2.jpg",
//   "images/thrift/tinypng/Thrift-store-day-web-image.jpg"
// ];

List<String> images = [
  // "https://unsplash.com/photos/coffee-in-gray-ceramic-mug-beside-blue-jeans-1VOtJMtghZ0",

  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY337taNjiPZPeruMu83HQd4-TvpcpDV-9iA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqvBrKVc0CI_wbGykF64-ApAqtuMsqFAg5JA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5QG8DZWBDWc4NiY79bg6-4zdPTwTikBAaRQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoJNjM_x-YoEgoWJDKALfyV9yg8pyd8aMrVg&s",

  // "https://bloximages.newyork1.vip.townnews.com/lsureveille.com/content/tncms/assets/v3/editorial/7/b4/7b439b00-5299-11ef-b062-a705f9f85df8/66afd9b14d550.image.jpg?resize=1200%2C900",
  // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMbxsRiC0WhDU1BuyXsoNgYFsomswP0PT84w&s",
  // "https://i.insider.com/599750d138c3fb43008b49b1?width=800&format=jpeg&auto=webp",
  // "https://www.gimv.org/wp-content/uploads/2022/06/6-2.jpg",
  // "https://secretsofparis.com/wp-content/uploads/2021/08/Kiliwatch.jpg",
  // "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg",
  // "https://salvationarmy.ca/wp-content/uploads/2013/08/Thrift_Store-2.jpg",
  // "https://salvationarmy.ca/wp-content/uploads/2023/12/Peterborough-Christmas-web-image-2023.jpg",
  // "https://www.thriftstore.ca/wp-content/uploads/2020/12/5.-POCOOpening.jpeg",
  // "https://media.cbs8.com/assets/KFMB/images/9bd6eb09-d2d4-4476-b3ff-8a2dad0fbd5d/9bd6eb09-d2d4-4476-b3ff-8a2dad0fbd5d_1920x1080.jpg",

  "https://github.com/pankaj-basnet/flutter--thrift--pics/blob/main/priscilla-du-preez-dlxLGIy-2VU-unsplash.jpg",

  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY337taNjiPZPeruMu83HQd4-TvpcpDV-9iA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqvBrKVc0CI_wbGykF64-ApAqtuMsqFAg5JA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5QG8DZWBDWc4NiY79bg6-4zdPTwTikBAaRQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9HrU2Xgu9bONeP5HE8vOQatTgpUviURxk4g&s",

  "https://github.com/pankaj-basnet/flutter--thrift--pics/blob/main/rocknwool-1VOtJMtghZ0-unsplash.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoJNjM_x-YoEgoWJDKALfyV9yg8pyd8aMrVg&s",
];

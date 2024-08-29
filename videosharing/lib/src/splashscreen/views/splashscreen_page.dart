import 'package:flutter/material.dart';
import 'package:videosharing/const/resource.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_JPEG)),
      ),
    ));
  }
}

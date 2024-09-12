import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/const/resource.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    _navigator();

    super.initState();
  }

  _navigator() async {
    // await Future.delayed(const Duration(microseconds: 8000), () {
    await Future.delayed(const Duration(milliseconds: 1500), () {
      if (Storage().getBool('firstOpen') == null) {
        // Go to the onboarding screen
        GoRouter.of(context).go('/onboarding');
      } else {
        // Go to the home page
        GoRouter.of(context).go('/home');

      }

    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_JPEG)),
      ),
    ),);
  }
}

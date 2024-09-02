
import 'package:flutter/material.dart';
import 'package:videosharing/src/entrypoint/views/entrypoint.dart';
import 'package:videosharing/src/onboarding/views/onboarding_screen.dart';
import 'package:videosharing/src/splashscreen/views/splashscreen_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router =
    GoRouter(navigatorKey: navigatorKey, initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const AppEntryPoint(),
  ),
  GoRoute(path: '/onboarding',
  builder: (context, state) => const OnBoardingScreen(),),
  // GoRoute(path: '/review',
  // builder: (context, state) => const ReviewsPage(),),
  // GoRoute(path: '/policy',
  // builder: (context, state) => const PolicyPage(),),
  // GoRoute(path: '/verification',
  // builder: (context, state) => const VerificationPage(),),
  // GoRoute(path: '/policy',
  // builder: (context, state) => const PolicyPage(),),
]);

GoRouter get router => _router;

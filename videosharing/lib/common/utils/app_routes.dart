import 'package:flutter/material.dart';
import 'package:videosharing/src/auth/views/login_screen.dart';
import 'package:videosharing/src/entrypoint/views/entrypoint.dart';
import 'package:videosharing/src/onboarding/views/onboarding_screen.dart';
import 'package:videosharing/src/splashscreen/views/splashscreen_screen.dart';
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
    builder: (context, state) => AppEntryPoint(),
  ),
  GoRoute(
    path: '/onboarding',
    builder: (context, state) => const OnBoardingScreen(),
  ),
  // GoRoute(path: '/review',
  // builder: (context, state) => const ReviewsPage(),),
  // GoRoute(path: '/policy',
  // builder: (context, state) => const PolicyPage(),),
  // GoRoute(path: '/verification',
  // builder: (context, state) => const VerificationPage(),),
  // GoRoute(
  //   path: '/search',
  //   builder: (context, state) => const SearchPage(),
  // ),
  // GoRoute(
  //   path: '/help',
  //   builder: (context, state) => const HelpCenterPage(),
  // ),
  // GoRoute(
  //   path: '/orders',
  //   builder: (context, state) => const OrdersPage(),
  // ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
  // GoRoute(
  //   path: '/register',
  //   builder: (context, state) => const RegistrationPage(),
  // ),
  // GoRoute(
  //   path: '/categories',
  //   builder: (context, state) => const CategoriesPage(),
  // ),
  // GoRoute(
  //   path: '/catergory',
  //   builder: (context, state) => const CatergoryPage(),
  // ),
]);

GoRouter get router => _router;

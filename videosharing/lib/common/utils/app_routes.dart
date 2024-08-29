import 'package:flutter/material.dart';
import 'package:videosharing/src/entrypoint/views/entrypoint.dart';
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
]);

GoRouter get router => _router;

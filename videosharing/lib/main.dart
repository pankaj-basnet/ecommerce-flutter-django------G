// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart' show MultiProvider; // not necessary ---- error removed when MultiProvider added before adding widgets
import 'package:videosharing/common/utils/app_routes.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videosharing/common/utils/environment.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/src/auth/controllers/password_notifier.dart';
import 'package:videosharing/src/categories/controllers/category_notifier.dart';
import 'package:videosharing/src/entrypoint/controllers/bottom_tab_notifier.dart';
import 'package:videosharing/src/home/controllers/home_tab_notifier.dart';
import 'package:videosharing/src/onboarding/controllers/onboarding_notifier.dart';
import 'package:videosharing/src/products/controllers/colors_sizes_notifier.dart';
import 'package:videosharing/src/products/controllers/product_notifier.dart';
import 'package:videosharing/src/splashscreen/views/splashscreen_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  //load the correct environment
  await dotenv.load(fileName: Environment.fileName);

  await GetStorage.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OnboardingNotifier()),
      ChangeNotifierProvider(create: (_) => TabIndexNotifier()),
      ChangeNotifierProvider(create: (_) => CategoryNotifier()),
      ChangeNotifierProvider(create: (_) => HomeTabNotifier()),
      ChangeNotifierProvider(create: (_) => ProductNotifier()),
      ChangeNotifierProvider(create: (_) => ColorSizesNotifier()),
      ChangeNotifierProvider(create: (_) => PasswordNotifier()),
      
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
        designSize: screenSize,
        minTextAdapt: true,
        splitScreenMode: false,
        useInheritedMediaQuery: true,
        builder: (_, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: AppText.kAppName,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ),
            routerConfig: router,
            // home: ,
          );
        },
        child: const SplashScreen());
    // child: const MyHomePage(title: 'Flutter Demo Home Page'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

until 42 min 10 sec ----notes in ""z-----files-----.md""
D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\z-----files-----.md

=================================================================================
<!-- 42 min 10 sec -->
isn=
we need to do these things
1st = splash screen
2nd = boarding screen
3rd = entrypoint

we need to configure routing


=================================================================================
<!-- CHAPTER -       SETTING UP DEV AND PRODUCTION ENV WITH FLUTTER_DOTENV -->
<!-- CHAPTER -       SETTING UP DEV AND PRODUCTION ENV WITH FLUTTER_DOTENV -->
<!-- CHAPTER -       SETTING UP DEV AND PRODUCTION ENV WITH FLUTTER_DOTENV -->
<!-- CHAPTER -       SETTING UP DEV AND PRODUCTION ENV WITH FLUTTER_DOTENV -->
<!-- CHAPTER -       SETTING UP DEV AND PRODUCTION ENV WITH FLUTTER_DOTENV -->
<!-- CHAPTER -       SETTING UP DEV AND PRODUCTION ENV WITH FLUTTER_DOTENV -->
main.dart

edit D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\common\utils\environment.dart

kDebugMode --- kReleaseMode
=================================================================================
"D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\Screenshot (6815) ------- dependencies---project---.png"


edit videosharing\.env.development
edit videosharing\.env.production

edit videosharing\lib\main.dart
  await dotenv.load(fileName: Environment.fileName);

print('Environment.apiKey')
=================================================================================


<!-- in mac ios laptop ---error -->
cd ios
pod install

mistake---found later-->edit D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\ios\.gitignore

edit videosharing\.gitignore
=================================================================================
<!-- =======         time        57 mins         ======= -->
<!-- -- CHAPTER -             Initializing ScreenUtils and setting up go router          ======== -->
<!-- -- CHAPTER -             Initializing ScreenUtils and setting up go router          ======== -->
<!-- -- CHAPTER -             Initializing ScreenUtils and setting up go router          ======== -->
<!-- -- CHAPTER -             Initializing ScreenUtils and setting up go router          ======== -->
<!-- -- CHAPTER -             Initializing ScreenUtils and setting up go router          ======== -->
<!-- -- CHAPTER -             Initializing ScreenUtils and setting up go router          ======== -->



=================================================================================



<!-- time 59 min 13 sec -->
return ScreenUtilInit(builder: (context{return MaterialApp(
=================================================================================

Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
        designSize: screenSize,
        minTextAdapt: true,
        splitScreenMode: false,
        useInheritedMediaQuery: true,
        builder: (_, child) {




router --- app_routes.dart--- GoRouter get router

ib\common\utils\app_routes.dart

=================================================================================



lib\src\splashscreen\views\splashscreen_page.dart

=================================================================================

<!-- time 1 hr 04 min 12 sec -->

ScreenUtilInit

=================================================================================

commented temporarily  --- kRadiusTop --- AppStyle --- ReusableText




=================================================================================

<!-- time 1 hr 04 min 18 sec -->




=================================================================================
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE
# =======       CHAPTER --    SPLASHSCREEN AND INITIALIZING GETSTORAGE

<!--        =======       time 1 hr 05 min 20 sec        =======        -->





=================================================================================

edit lib\const\resource.dart

  static const String ASSETS_IMAGES_SPLASHSCREEN_JPEG =
      'assets/images/a-splashscreen.jpg';

=================================================================================

lib\src\splashscreen\views\splashscreen_page.dart

Scaffold(--- Container----BoxDecoration--- DecorationImage

"D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\Screenshot (6816)---------ecom logo image------ time 1 hr 07 min -----.png"

=================================================================================

<!-- time 1 hr 11 min -->
get_storage ----- local storage for app

already created lib\common\services\storage.dart

=================================================================================

import 'package:get_storage/get_storage.dart';


class Storage---GetStorage().erase(); ---import 'package:get_storage/get_storage.dart';
  

class Storage {
  void clear() {
    GetStorage().erase();
  }

<!-- videosharing\lib\main.dart -->
  await GetStorage.init();

if (Storage().getBool('firstOpen') == null) {

=================================================================================
<!-- time 1 hr 15min -->
 GoRoute(path: '/onboarding',
  builder: (context, state) => const OnBoardingScreen(),),



=================================================================================

create lib\src\onboarding\views\onboarding_page.dart

class OnBoardingScreen extends StatelessWidget {


=================================================================================

create lib\src\onboarding\controllers\onboarding_notifier.dart

<!-- youtube ------ time 1 hr 21 mins 28 sec -->

onboarding_notifier.dart --- class OnboardingNotifier

OnboardingNotifier ---- this is provider --- our first provider
=================================================================================

if new provider created, we initialize it and continue our project

// import 'package:provider/provider.dart' show MultiProvider; // not necessary ---- error removed when MultiProvider added before adding widgets

runApp(MultiProvider(providers: [ ChangeNotifierProvider(create: (_) => OnboardingNotifier())

=================================================================================

<!-- time 1hr29min -->
          Text(context.watch<OnboardingNotifier>().selectedPage.toString()),


using "provider" , change state or variable value in StatelessWidget  --- context.read or context.watch --- get or set state {{sn= mb=}}

first method seen---how to read provider --- {{isn=}} --- change state or variable value in StatelessWidget

=================================================================================

delete code --- first method ---how to read provider --- {{testing done sn= { if clicked on "increment" , set value to "9" on screen of mobile phone screen}}}

<!-- ------------------------------------ -->
<!-- Column(
        children: [
          TextButton(
            onPressed: () {
              context.read<OnboardingNotifier>().setSelectedPage = 9;
            },
            child: Text('Increment'),
          ),
          Text(context.watch<OnboardingNotifier>().selectedPage.toString()),
        ],
      ) -->
<!-- ------------------------------------//>> -->


=================================================================================
<!-- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\onboarding\views\onboarding_page.dart -->
<!-- lib\src\onboarding\views\onboarding_page.dart -->
Consumer<OnboardingNotifier> --- with "builder" named argument or parameter ----body: Consumer<OnboardingNotifier>(builder: (context, onboardingNotifier, child) {return Column(

body: Consumer<OnboardingNotifier>(
        builder: (context, onboardingNotifier, child) {
          return Column(

big widget passed as "function or widget" to Consumer<OnboardingNotifier> class of "provider" library --- provider/src/....dart 
=================================================================================
<!-- time 1hr31min -->
depending on where you
if you already grabbed or has "parent Widget" inside Consumer, but (again) if you want to access another provider inside this widget.-----then use, """Consumer --- context of""" of that particular provider , you want to use in that particular page

----------------------------------------------------
<!-- time 1hr31min50sec -->
another method to change state --- by initializing provider --- """final pro = Provider.of<OnboardingNotifier>(context);"""
another method to change state --- access Provider --- final pro = Provider.of<OnboardingNotifier>(context);

we are consuming a provider named "OnboardingNotifier"

 provider named "OnboardingNotifier" is passed as argument for "onboardingNotifier"

instructor made his custom shortcut --- """"Provider.of<MyType>(context)"""" ---        builder: (context, onboardingNotifier, child) {


final pro = Provider.of<OnboardingNotifier>(context);
    return Scaffold (
      body: Consumer<OnboardingNotifier>(
        builder: (context, onboardingNotifier, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  pro.setSelectedPage = 5;
                },
                child: Text('Increment'),
              ),
              Text(pro.selectedPage.toString()),
            ],
          );
        },
      ),


=================================================================================

three ways to access and use provider ------ above three ways seen already

best way to use provider is by using "Consumer" and "context.of" ---withour initializing "Provider"



=================================================================================

<!-- time 1hr33min45sec -->
if needed , use all three ways to use provider to make code cleaner {isn=}



=================================================================================

these code deleted ---- lib\src\onboarding\views\onboarding_screen.dart --- ( onboarding_page.dart
these code deleted ---- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\onboarding\views\onboarding_screen.dart --- (onboarding_page.dart

<!-- 
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<OnboardingNotifier>(context);
    return Scaffold(
      body: Consumer<OnboardingNotifier>(
        builder: (context, onboardingNotifier, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  pro.setSelectedPage = 5;
                },
                child: Text('Increment'),
              ),
              Text(pro.selectedPage.toString()),
            ],
          );
        },
      ),
    );
  }
} -->



=================================================================================

{/// Creates a stack layout widget.--class Stack extends MultiChildRenderObjectWidget 



=================================================================================
<!-- time 1hr37min20sec -->
getting page from parent widget

 parent widget is "PageView" {{mb=}}
 PageView(
          onPageChanged: (page) {
            context.read<OnboardingNotifier>().setSelectedPage = page;
          },

<!-- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\onboarding\controllers\onboarding_notifier.dart -->
set setSelectedPage(int page) {

    print('---$page-----');
=================================================================================
<!-- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\onboarding\views\onboarding_page.dart -->

convert OnBoardingScreen to StatefulWidget


class OnBoardingScreen extends StatefulWidget {


=================================================================================
<!-- time 1hr42mins51sec -->
create videosharing\lib\src\onboarding\widgets
create videosharing\lib\src\onboarding\widgets\onboarding_page_one.dart
create videosharing\lib\src\onboarding\widgets\welcomescreen.dart


change name of onboarding_page.dart to onboarding_screen.dart
=================================================================================

use "SizedBox" instead of "Container"



=================================================================================

<!-- time 1 hr 58 mins 30 sec -->


class AppText{
  static const String kGetStarted = "Let's Get Started";

=================================================================================

<!-- time 2hr 01 min -->
<!-- time 2hr 01 min -->
<!-- time 2hr 01 min -->

=================================================================================

time 2hr01m30s
file name changed to "splashscreen_screen.dart" from splashscreen_page.dart


=================================================================================


(((con=))) setting page number for pages of OnBoardingScreen--- set setSelectedPage(int page) { ---- context.read<OnboardingNotifier>().setSelectedPage = page; --- OnboardingScreenOne(),---OnboardingScreenTwo(),---WelcomeScreen() -----""setSelectedPage = page"" done instead of function parameter page --- why?? {{sn=}}

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\onboarding\views\onboarding_screen.dart
before time 2hr13min57s ---- Icon ( AntDesign.rightcircleo, color: Kolors.kPrimary, size: 20, // overflow error )

=================================================================================

"index" used instead of "page" ----  _pageController.animateToPage(page, duration: duration, curve: curve) ----  _pageController.animateToPage(index, duration: duration, curve: curve)



=================================================================================

time 2hr20min56s
making _pageController animate to " selectedPage +1 " ---- GestureDetector(onTap: () {_pageController.animateToPage(context.read<OnboardingNotifier>().selectedPage +1,duration: const Duration(milliseconds: 200),curve: Curves.easeIn);



=================================================================================

isn= widget/reusable_text.dart ---- time 2hr22min29s



-------------------------------------
summary of src\onboarding\views\onboarding_screen.dart --- until 2hr30min {{sn= 2hr24min still no complete}}

-------------------------------------
scaffold --> (stack --> (children  --> [ PageView , Container] ) ) --- -- {{sn=}}

-------------------------------------
<!-- summary of process -->
--- put children in stack (step-1)
children: const [ OnboardingScreenOne(), OnboardingScreenTwo(), WelcomeScreen()],
--- put icons at the bottom (step-2)
GestureDetector( onTap: () {}, child: Icon(  ++++   SizedBox(   ++++   GestureDetector( 
--- at third page -- WelcomeScreen , Container with Row should shrink(step-3)
--- at first page -- WelcomeScreen , "left icon" should disappear(step-3)

-------------------------------------
=================================================================================




=================================================================================

time 2hr28min09s
create lib\src\auth\views\login_screen.dart ---- class LoginPage 
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\auth\views\login_screen.dart


time 2hr31m
create lib\src\profile
create lib\src\profile\views
create lib\src\profile\views\profile_screen.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\profile\views\profile_screen.dart
=================================================================================

create lib\src\cart\views\cart_screen.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\cart\views\cart_screen.dart

=================================================================================

create lib\src\wishlist\views\wishlist_screen.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\wishlist\views\wishlist_screen.dart



=================================================================================

Scaffold(
      body: Stack(
        children: [
          // pageList[1],   // <-------- does not work for Wishlist, only works for homepage -- List<Widget> pageList 
          pageList[0],



=================================================================================

time 2hr52m43s
create lib\src\entrypoint\controllers\bottom_tab_notifier.dart
<!-- create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\entrypoint\controllers\bottom_tab_notifier.dart -->



=================================================================================

time 2hr59min35s
added this code  ----->  Consumer<TabIndexNotifier>( builder: (context, tabIndexNotifier, child) { return 



=================================================================================


added -----> 
added -----> 
added -----> 
added -----> onTap: (i) { print(i); tabIndexNotifier.setIndex(i);  },
added -----> currentIndex: tabIndexNotifier.index,

=================================================================================


 Badge( label: Text('9'), child: const Icon


=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





=================================================================================





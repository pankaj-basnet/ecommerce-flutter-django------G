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

create lib\src\home\widgets\notifications_widget.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\home\widgets\notifications_widget.dart



=================================================================================

time 3hr20min

create lib\src\notification\views\notification_screen.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\notification\views\notification_screen.dart


""RenderFlex overflowed by 4.0 pixels on the right"" removed --- after making "notifications" icon smaller ---- padding: EdgeInsets.only(   // right: 12.w,   right: 8.w, ), child: CircleAvatar(


=================================================================================

time 3hr38m02s
create lib\src\search\views\search_screen.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\search\views\search_screen.dart



=================================================================================

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\common\utils\app_routes.dart



=================================================================================


code incomplete in lib\const\constants.dart


=================================================================================
time 3hr49m30s
code incomplete in lib\const\constants.dart




=================================================================================


create lib\src\home\widgets\home_slider.dart
class HomeSlider 


=================================================================================

rename "GradientBtn" to "CustomButton"

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\common\widgets\custom_button.dart

=================================================================================

time 4hr11m55s
create lib\src\home\widgets\home_header.dart



=================================================================================

create lib\src\categories
create lib\src\categories\views\
create lib\src\categories\views\categories_screen.dart



=================================================================================

{{mb= jason data}} data for ""constants.dart"" copied from postman ----> List<Categories> cat = [
on postman --- GET request done ----> url ---> "http://127.0.0.1:8000/api/products/categories/home"


=================================================================================

quicktype.io


temporary solution ----  List<Categories> cat = [ ---- will be deleted later isn=
=================================================================================

time 4hr36m39s
use ChatGPT to create "Categories" objects --- check contants.dart



=================================================================================

List<Categories> categories = [     ---  contants.dart



=================================================================================

create lib\src\home\widgets\categories_list.dart

import 'package:flutter_svg/svg.dart'; ----- lib\src\categories\views\categories_screen.dart


=================================================================================
time 4hr43min49s


 // "https://github.com/pankaj-basnet/flutter--thrift--pics/blob/main/artificial-photography-vB5qtt8X4NA-unsplash.jpg",
  // "https://github.com/pankaj-basnet/flutter--thrift--pics/blob/main/cristofer-maximilian-AqLIkOzWDAk-unsplash.jpg",
  // "https://github.com/pankaj-basnet/flutter--thrift--pics/blob/main/5.-POCOOpening.jpeg",

=================================================================================




List<Categories> categories = [
  Categories(
      title: "Pants",
      id: 1,
      // imageUrl: "https://m.media-amazon.com/images/I/81CW6tC3XjL.__AC_SX300_SY300_QL70_FMwebp_.jpg"
      imageUrl:
          "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
      // "images/a-placeholder.jpg"
      // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5FT0zEHBnRoAm3Z8vii7UTqu2ZtDnJIvtrQ&s"
      ),
  Categories(
      title: "T-Shirts",
      id: 5,
      imageUrl:
          "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
      // "images/a-placeholder.jpg"
      // "https://m.media-amazon.com/images/I/51ulmT3YUZL._AC_SX522_.jpg"
      // ),
      // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnvKIV4blz56_pTUdc61Xc0ZEF3lGm_hjJGA&s"
      ),
  Categories(
      title: "Sneakers",
      id: 3,
      imageUrl:
          "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
      // "images/a-placeholder.jpg"
      // "https://m.media-amazon.com/images/I/41Jhn7-62eL._AC_SY695_.jpg"
      ),
  Categories(
      title: "Dresses",
      id: 2,
      imageUrl:
          "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
      // "images/a-placeholder.jpg"
      // "https://m.media-amazon.com/images/I/71Wm1P0x8AL._AC_SX569_.jpg"
      ),
  Categories(
      title: "Jackets",
      id: 4,
      imageUrl:
          "https://salvationarmy.ca/wp-content/uploads/2020/08/Thrift-store-day-web-image.jpg"
      // "images/a-placeholder.jpg"
      // "https://m.media-amazon.com/images/I/61o+IG4jWhL._AC_SX569_.jpg"
      ),
];


=================================================================================
time 4hr46min53s
created lib\src\categories\views\category_page.dart
created D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\views\category_page.dart




=================================================================================
time 4hr-48min-27s
create lib\src\categories\controllers\category_notifier.dart
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\controllers\category_notifier.dart


create videosharing\lib\src\categories\views\category_page.dart
create videosharing\lib\common\utils\app_routes.dart
=================================================================================

time 5hr07m05s
convert  HomePage to "StatefullWidget" ---- class HomePage extends StatelessWidget {




=================================================================================

time 5hr11min14s
create lib\src\home\controllers\home_tab_notifier.dart


=================================================================================

practice done --- sn= ---  ClipRRect used --- circular image --- CircleAvatar( backgroundColor: Kolors.kSecondaryLight, child: Padding(   padding: EdgeInsets.all(4.h),   child: ClipRRect(     borderRadius: BorderRadius.circular(50),     child: Image.network(       category.imageUrl,       width: 40.w,       height: 40.h,     ),   ),),),



=================================================================================

<!-- time 5hr22min41s --> ""dispose()"" completed

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: homeTabs.length, vsync: this);

    _tabController.addListener(_handleSelection);
    super.initState();
  }

  void _handleSelection() {
    // setState(() => _currentTabIndex = _tabController.index); // not preferred way of isn=
    final controller = Provider.of<HomeTabNotifier>(context, listen: false);

    setState(() {
      _currentTabIndex = _tabController.index;
      controller.setIndex(homeTabs[_currentTabIndex]);
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleSelection);
    _tabController.dispose();

    super.dispose();
  }



=================================================================================
<!-- time 5hr23min19sec -->
create lib\src\home\widgets\home_tabs.dart


add code to lib\common\widgets\tab_widget.dart


=================================================================================

<!-- lib\src\home\views\home_screen.dart -->
index of _tabController is automatic ---   ""  _tabController = TabController(length: homeTabs.length, vsync: this);  "" ---lib\src\home\views\home_screen.dart {{sn=}}





=================================================================================

<!-- time 5hr-39min-21sec -->
create lib\src\products\models\products_model.dart

copy paste "model" code from quicktype.io


=================================================================================

pasted to quicktime.io ---- to make product model

[
  {
    "id": 3,
    "title": "Converse Chuck Taylor All Star",
    "price": 60.0,
    "description": "The Classic Chuck Taylor All Star Sneaker from Converse, featuring a timeless design and comfort ooo...",
    "is_featured": true,
    "clothesType": "kids",
    "ratings": 4.333333333333333,
    "colors": ["black", "white", "red"],
    "imageUrls": [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"
    ],
    "sizes": ["7", "8", "9", "10", "11"],
    "created_at": "2024-06-06T07:57:45Z",
    "category": 3,
    "brand": 1
  },
  {
    "id": 1,
    "title": "LV Trainers",
    "price": 798.88,
    "description": "LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium material ooo...",
    "is_featured": true,
    "clothesType": "women",
    "ratings": 4.5,
    "colors": ["white", 
    "black", 
    "red"],
    "imageUrls": [
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"

    ],
    "sizes": ["7", "8", "9", "10", "11"],
    "created_at": "2024-06-06T07:49:15Z",
    "category": 3,
    "brand": 1
  },
  {
    "id": 2,
    "title": "Adidas Ultraboost",
    "price": 180.0,
    "description": "experience the comfort and energy return of the Ultraboost, designed for running ooo...",
    "is_featured": true,
    "clothesType": "unisex",
    "ratings": 5.0,
    "colors": ["navy", "grey", "blue"],
    "imageUrls": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZCaCN_ZPB9T0GUjDqNGz_o3NYA2UgL1GvoA&s"

    ],
    "sizes": [
      "7", 
      "8", 
      "9",
       "10", 
      "11"],
    "created_at": "2024-06-06T07:55:20Z",
    "category": 3,
    "brand": 1
  }
]


=================================================================================

result code from quicktype.io ------- null safety --> on, make all properties required --> , make all properties final --> 

-------------------------------------
// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    final int id;
    final String title;
    final double price;
    final String description;
    final bool isFeatured;
    final String clothesType;
    final double ratings;
    final List<String> colors;
    final List<String> imageUrls;
    final List<String> sizes;
    final DateTime createdAt;
    final int category;
    final int brand;

    Products({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.isFeatured,
        required this.clothesType,
        required this.ratings,
        required this.colors,
        required this.imageUrls,
        required this.sizes,
        required this.createdAt,
        required this.category,
        required this.brand,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        isFeatured: json["is_featured"],
        clothesType: json["clothesType"],
        ratings: json["ratings"]?.toDouble(),
        colors: List<String>.from(json["colors"].map((x) => x)),
        imageUrls: List<String>.from(json["imageUrls"].map((x) => x)),
        sizes: List<String>.from(json["sizes"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        category: json["category"],
        brand: json["brand"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "is_featured": isFeatured,
        "clothesType": clothesType,
        "ratings": ratings,
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "imageUrls": List<dynamic>.from(imageUrls.map((x) => x)),
        "sizes": List<dynamic>.from(sizes.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "category": category,
        "brand": brand,
    };
}

-------------------------------------


=================================================================================


ChatGPT not used to create "Products" model list  --- done manually


List<Products> products = [ Products(  ----- lib\const\constants.dart



=================================================================================

create lib\src\products\widgets\staggered_tile_widget.dart



=================================================================================

<!-- lib\src\wishlist\views\wishlist_screen.dart -->

create lib\src\products\views\product_screen.dart


=================================================================================

<!-- time 6 hr 17 min 25 s -->
create lib\src\products\controllers\product_notifier.dart

<!-- COMMIT DONE           ============= -->
<!-- ProductPage GOING ON -->
=================================================================================





=================================================================================





=================================================================================





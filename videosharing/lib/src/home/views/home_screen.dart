import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/src/home/controllers/home_tab_notifier.dart';
import 'package:videosharing/src/home/widgets/categories_list.dart';
import 'package:videosharing/src/home/widgets/custom_app_bar.dart';
import 'package:videosharing/src/home/widgets/home_header.dart';
import 'package:videosharing/src/home/widgets/home_slider.dart';
import 'package:videosharing/src/home/widgets/home_tabs.dart';
import 'package:videosharing/src/products/widgets/explore_products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  int _currentTabIndex = 0;

  int cfeCountExploreProductshome2 = 1000; // sn=

  
  



  @override
  void initState() {
    _tabController = TabController(length: homeTabs.length, vsync: this);

    _tabController.addListener(_handleSelection);
    super.initState();
  }

  void _handleSelection() {
    // setState(() => _currentTabIndex = _tabController.index); // not preferred way of isn=
    final controller = Provider.of<HomeTabNotifier>(context,
        listen: false); // {{ listen = false because listening on initState}}

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

  @override
  Widget build(BuildContext context) {

      
      cfeCountExploreProductshome2 += 1; // sn= { variable defined in class -- not a "final" or "const" variable}
       print(' .....cfeCountExploreProductshome2..... ${cfeCountExploreProductshome2} .......... '); // sn=


    int cfeCountExploreProductshome = 100;

        cfeCountExploreProductshome += 1; // sn=
       print(' .....cfeCountExploreProductshome..... $cfeCountExploreProductshome ..........    ............................................'); // sn=

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(),
      ),
      body: ListView(
        // child: Text("homepage"),
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        children: [
          SizedBox(
            height: 5.h,
            // height: 20.h,
          ),
          const HomeSlider(),
          SizedBox(
            height: 15.h,
          ),
          const HomeHeader(),
          SizedBox(
            height: 5.h, //isn =
            // height: 10.h, //isn =
          ),
          const HomeCategoriesList(),
          SizedBox(
            height: 15.h,
          ),
          HomeTabs(tabController: _tabController),
          SizedBox(
            height: 15.h,
          ),
          const ExploreProducts(),
          SizedBox(
            height: 100.h,
          ),
        ],
      ),
    );
  }
}

List<String> homeTabs = ["All", "Popular", "Unisex", "Men", "Women", "Kids"];

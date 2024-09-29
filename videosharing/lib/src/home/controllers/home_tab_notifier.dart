import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:videosharing/common/utils/enums.dart';

class HomeTabNotifier with ChangeNotifier {
  int rf = 0;
  // void Function()? refetch;  // isn = {commented out --- deleted time 1hr-14m V2}

  // void setRefetch(Function() r) { // isn = {commented out --- deleted time 1hr-14m V2}
  //   refetch = r;

  //   print('refetch set'); // isn = { for home tab --- products by men sn=}
  //   print(
  //       '---D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\home\controllers\home_tab_notifier.dart---'); // isn = { for home tab --- products by men sn=}

  //   print('----------------------------------------------');
  //   rf += 1;
  //   print(rf);
  // }

  
    // rf += 1; // error ----- use var, const, final
    // print(rf);// error ---- 'print' must have a method body because 'HomeTabNotifier' isn't abstract

  QueryType queryType = QueryType.all;

  String _index = 'All';

  String get index => _index;

  void setIndex(String index) {
    _index = index;

    int cfeCountHomeTabNotifier = 10000;
        rf += 1;

    print(
        ' ...cfeCountHomeTabNotifier.. ${cfeCountHomeTabNotifier} ..........  ...$rf...rf........... '); // sn=
    cfeCountHomeTabNotifier += 1; // sn=
    print(' ..... cfe .......... '); // sn=

    switch (index) {
      case 'All':
        setQueryType(QueryType.all);
        // refetch!();
        break;
      case 'Popular':
        setQueryType(QueryType.popular);
        // refetch!();

        break;
      case 'Unisex':
        setQueryType(QueryType.unisex);
        // refetch!();

        break;
      case 'Men':
        setQueryType(QueryType.men);
        // refetch!();

        break;
      case 'Women':
        setQueryType(QueryType.women);
        // refetch!();

        break;
      case 'Kids':
        setQueryType(QueryType.kids);
        // refetch!();

        break;
      default:
        setQueryType(QueryType.all);
    }

    notifyListeners();

    cfeCountHomeTabNotifier += 1; // sn=
    print(
        ' ..... cfe ....cfeCountHomeTabNotifier...... $cfeCountHomeTabNotifier ...... '); // sn=
  }

  void setQueryType(QueryType q) {
    queryType = q;

    // refetch!(); //isn= {deleted --- time 1hr-14m V2}
    notifyListeners();

    print(
        '---${q.name}---------------D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\home\controllers\home_tab_notifier.dart'); // isn=   {comment later sn=}
    print(
        '----------------------------------------------------------------------------------------------------------------------------');
  }
}

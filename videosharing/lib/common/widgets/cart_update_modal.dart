import 'package:flutter/material.dart';

import 'app_style.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:flutter/cupertino.dart';

void showCartPopup(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(
            'Update Cart Item Quantity',
            style: appStyle(18.0, Kolors.KGrayLight, FontWeight.bold),
          ),
          message: const Text(
            "By updating the cart the app will refetch the data",
            style: TextStyle(fontSize: 16.0),
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      });
}


// self note
// code written here as per lecture until time 32 mins
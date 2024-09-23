import 'package:flutter/material.dart';
import 'package:videosharing/common/utils/kcolors.dart'; // before starting project
import 'package:videosharing/common/widgets/app_style.dart'; // before starting project

import 'package:flutter/cupertino.dart'; // before starting project

void showErrorPopup(BuildContext context, String errorMessage, String? title,
    bool? removeCancel) {
  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(
            title ?? 'Error',
            // style: appStyle(18.0, Kolors.kGrayLight, FontWeight.bold),
            style: TextStyle(
              fontSize: 18,
              color: Kolors.kRed,
              // color: Colors.red, //color: Kolors.kRed,

              fontWeight: FontWeight.bold,
            ),
          ),
          message: Text(
            errorMessage,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
          cancelButton: removeCancel == null
              ? CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDefaultAction: true,
                  child: const Text('Cancel'))
              : const SizedBox.shrink(),
        );
      });
}

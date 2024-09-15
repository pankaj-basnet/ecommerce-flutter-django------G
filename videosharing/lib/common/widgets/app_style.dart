import 'package:flutter/material.dart';

class appStyle extends StatelessWidget {
  const appStyle(
      {super.key, this.fontsize_sn, this.kolor_sn, this.fontweigt_sn});

  final fontsize_sn;
  final kolor_sn;
  final fontweigt_sn;

  @override
  Widget build(BuildContext context) {
    return Container(
        //child: TextStyle(fontSize: fontsize_sn, color: kolor_sn, fontWeight: fontweigt_sn), //sn=
        );
  }
}


// doesn't work ------ tried to return TextStyle

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     child: TextStyle(fontSize: fontsize_sn, color: kolor_sn, fontWeight: fontweigt_sn), //sn=

    // return TextStyle(fontSize: fontsize_sn, color: kolor_sn, fontWeight: fontweigt_sn
//     );
//   }
// }
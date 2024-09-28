import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:videosharing/common/widgets/custom_button.dart';

/// ERROR:  lot of instructor's code commented out ----- because overflowed problem on "LAVA"
/// ERROR:  lot of instructor's code commented out ----- because overflowed problem on "LAVA"
/// ERROR:  lot of instructor's code commented out ----- because overflowed problem on "LAVA"
/// ERROR:  lot of instructor's code commented out ----- because overflowed problem on "LAVA"
/// ERROR:  lot of instructor's code commented out ----- because overflowed problem on "LAVA"

Future<dynamic> showHelpCenterBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // height: 500.h,
          // height: MediaQuery.of(context).size.height * 0.9,
          // height: MediaQuery.of(context).size.height, // sn= { doesnot work}
          height: MediaQuery.of(context).size.height * 0.7, //isn=
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
          ),
          child: Padding(
            // mb= const by isn=
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Fashion App Help Center',
                    style: TextStyle(
                      fontSize: 12.0,
                      // fontSize: 18.0, // isn=
                      color: Kolors.kPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    // style: appStyle(
                    //   18.0,
                    //   Kolors.kPrimary,
                    //   FontWeight.bold,
                    // ),
                  ),
                ),

                //............
                // may be -- more code to be written here
                //............

                // Information Section
                Text(
                  'We\'re here to help! Find answers to frequently asked questions or contact ... ...',
                  textAlign: TextAlign.center,
                  // style: appStyle(16.0, Kolors.kDark, FontWeight.normal),
                ),
                // SizedBox(height: 15.0),
                // SizedBox(height: 15.h), // mb= isn=

                // ==========================================================
                // ==========================================================
                // ==========================================================
                // FAQ Section (Replace with actual FAQS)
                const Text(
                  // mb= const by isn=
                  'FAQs',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  // style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), //isn=
                ),
                // const SizedBox(height: 5.0), // mb= isn=
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Can I return an item?'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Kolors.kGray,
                  ),
                  // onTap: () {}
                  // onTap: () {
                  //   // Handle FAQ tap (open details page or show answer)
                  // }, //    ======================================================    line 58   ======================================================
                ),

                // ==========================================================

                ListTile(
                  //     <----------------------      isn=
                  contentPadding: EdgeInsets.zero,
                  title: const Text('How do I track my order'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Kolors.kGray,
                  ),
                  // onTap: () {},
                  // onTap: () {
                  //   // Handle FAQ tap (open details page or show answer)
                  // },
                ),

                // const SizedBox(height: 15.0), // mb= isn=

                // ==========================================================
                // ==========================================================
                // ==========================================================
                //Contact Section           // sn= line 74 {{before starting project --LINE 74 during "importing" CHAPTER}}
                const Text(
                  'Contact Us:',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
                // SizedBox( // uncommented temporarily --- {sn=}
                //   height: 10,
                //   // height: 10.h,
                // ),

                //======================================================================
                // uncommented temporarily --- {sn=}

                // const Row(
                //   children: [
                //     Icon(MaterialCommunityIcons.email_outline),
                //     SizedBox(
                //       width: 10.0,
                //     ),
                //     Text(
                //       'support@fashionapp.com',
                //       style: TextStyle(fontSize: 16.0),
                //     )
                //   ],
                // ),
                // SizedBox(
                //   height: 20,
                //   // height: 20.h,
                // ),

                //======================================================================
                Row(
                  children: [
                    Icon(MaterialCommunityIcons.phone_outline),
                    // SizedBox( // uncommented temporarily --- {sn=}
                    //   width: 10.0,
                    // ),
                    Text(
                      '+860000000000',
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),

                //======================================================================

                // SizedBox(height: 20), // mb= isn=
                // SizedBox(height: 20.h),
                //=====================       104 page no.        ========sn===============
                // ElevatedButton(
                //   // onPressed: () {},    // <--- error: invalid contant value
                //   //  onPressed: () {print('-----------');},    // <--- error: invalid contant value
                //   child: const Text('Visit Full Help Center'),
                // ),
                // ElevatedButton(onPressed: () {}, child: Text('data')),     // <--- error: invalid contant value {{ solve stackoverflow}}
                // <--- error caused by "const" in parent widget "Padding": invalid contant value {{ solve stackoverflow}} --- remove constant in padding

                //self note ----
                ElevatedButton(
                    onPressed: () {}, child: Text('Visit Full Help Center')),
                // CustomButton(text: 'Visit Full Help Center'),
              ],
            ),
          ),
        );
      });
}

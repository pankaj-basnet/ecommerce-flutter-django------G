import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Future<dynamic> showHelpCenterBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
          ),
          child: const Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fashion App Help Center',
                  style: appStyle(
                    18.0,
                    Kolors.kPrimary,
                    FontWeight.bold,
                  ),
                ),

                //............
                // may be -- more code to be written here
                //............

                // Information Section
                Text(
                  'We\'re here to help! Find answers to frequently asked questions or contact ... ...',
                  textAlign: TextAlign.center,
                  style: appStyle(16.0, Kolors.kDark, FontWeight.normal),
                ),
                SizedBox(height: 15.h),

                // FAQ Section (Replace with actual FAQS)
                const Text(
                  'FAQs',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Can I return an item?'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Kolors.kGray,
                  ),
                  onTap: () {
                    // Handle FAQ tap (open details page or show answer)
                  },      //    ======================================================    line 58   ======================================================
                ),      
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('How do I track my order'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Kolors.kGray,
                  ),
                  onTap: () {
                    // Handle FAQ tap (open details page or show answer)
                  },
                ),

                const SizedBox(height: 15.0),

                //Contact Section           // sn= line 74 {{before starting project --LINE 74 during "importing" CHAPTER}}
                const Text(
                  'Contact Us:',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Row(
                  children: [
                    Icon(MaterialCommunityIcons.email_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'support@fashionapp.com',
                      style: TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                //======================================================================
                const Row(
                  children: [
                    Icon(MaterialCommunityIcons.phone_outline),
                    SizedBox(
                        width: 10.0,
                        Text(
                          '+860000000000',
                          style: TextStyle(fontSize: 16.0),
                        ))
                  ],
                ),

                SizedBox(height: 20.h),
                //=====================       104 page no.        ========sn===============
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Visit Full Help Center'),
                ),
              ],
            ),
          ),
        );
      });
}

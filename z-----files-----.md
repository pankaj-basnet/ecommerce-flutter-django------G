<!-- no source code by instructor -->
<!-- many files mentioned in this file are already created by instructor -->
<!-- "create" files means we need to create in order to follow instructor's project -->

paste settings in pubspec.yaml including required packages or dependencies

create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\.env.production
create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\.env.development

create common/utils/kcolors.dart
write required codes for colors

<!-- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\const\constants.dart -->
create const\constants.dart

----------------
<!-- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\const\resource.dart -->

create class R in D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\const\resource.dart



----------------

create lib/common/utils/app_routes.dart

import 'package:go_router/go_router.dart';

----------------

create lib\src\splashscreen\views\splashscreen_page.dart

----------------

create lib\common\widgets\back_button.dart

----------------

create lib\common\widgets\cart_update_modal.dart
----------------

create videosharing\lib\common\widgets\app_style.dart
----------------

========================================================
========================================================
========================================================
========================================================
========================================================
----------        TIME 32 MINS        ----------
----------        TIME 32 MINS        ----------
----------        TIME 32 MINS        ----------
----------        TIME 32 MINS        ----------
----------        TIME 32 MINS        ----------

----------------

create lib\common\widgets\change_address_modal.dart

----------------

create lib\common\widgets\reusable_text.dart
----------------

create lib\common\utils\kstrings.dart

"D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\Screenshot (6802).png"
----------------

time 33mins
----------------


----------------

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
$ git commit -am "lib/common with 4 folders --- lib/const with 2 files created -----" -m "bringing in reusable code from another ecom
merce project"
[master aee6a8d] lib/common with 4 folders --- lib/const with 2 files created -----
 13 files changed, 250 insertions(+)
 create mode 100644 videosharing/lib/common/utils/app_routes.dart
 create mode 100644 videosharing/lib/common/utils/kcolors.dart
 create mode 100644 videosharing/lib/common/utils/kstrings.dart
 create mode 100644 videosharing/lib/common/widgets/app_style.dart
 create mode 100644 videosharing/lib/common/widgets/back_button.dart
 create mode 100644 videosharing/lib/common/widgets/cart_update_modal.dart
 create mode 100644 videosharing/lib/common/widgets/change_address_modal.dart
 create mode 100644 videosharing/lib/common/widgets/reusable_text.dart
 create mode 100644 videosharing/lib/const/constants.dart
 create mode 100644 videosharing/lib/const/resource.dart
 create mode 100644 videosharing/lib/src/entrypoint/views/entrypoint.dart
 create mode 100644 videosharing/lib/src/splashscreen/views/splashscreen_page.dart
 create mode 100644 z-----git----done.txt

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
$ date
Tue, Aug 27, 2024  3:16:30 PM

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
$ git log
commit aee6a8dacf7e0f07cf3a85297b74c33a99b8d072 (HEAD -> master)
Author: Pankaj Basnet <pankajbasnet2020@hotmail.com>
Date:   Tue Aug 27 15:16:11 2024 +0545

    lib/common with 4 folders --- lib/const with 2 files created -----

    bringing in reusable code from another ecommerce project

commit 93ea883bef611bd2b116bd0ec8fc78b6e42cdbfc
Author: Pankaj Basnet <pankajbasnet2020@hotmail.com>
Date:   Tue Aug 27 15:12:06 2024 +0545

    ecommerce flutter ----project copied from youtube-fcc----

=================================================================================
=================================================================================
=================================================================================
=================================================================================
=================================================================================
=================================================================================
=================================================================================




----------------

create lib\common\utils\kcolors.dart
----------------

create lib\common\utils\enums.dart
----------------

isn= we will be using flutter hooks and provider for state management later in this course

----------------

create lib\common\widgets\shimmers\categories_shimmer.dart
create lib\common\widgets\shimmers\shimmer_widget.dart

----------------
again, import relevant libraries to remove errors in lib\common\widgets\change_address_modal.dart

----------------
until now, still importing relevant libraries to remove errors in files in copy pasted folders "common" and "const"

----------------
time 35 mins 20 s
/// TODO: Add Address Selection ------ auto commentted {{mb= comment extension or AI extension}}
----------------

create lib\src\address\hooks\fetch_default_address.dart
create lib\src\home\widgets\notifications_widget.dart
----------------

delete custom_app_bar.dart ------ copy of code kept --- check it
----------------

create lib\common\widgets\custom_button.dart

----------------

create lib\common\widgets\custom_text.dart

----------------

create lib\common\widgets\custom_textfield.dart

----------------

create lib\common\widgets\email_textfield.dart
----------------

create lib\common\widgets\error_modal.dart
----------------

% D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\common\widgets
created rest of the files in "lib\common\widgets\"

"videosharing\lib\common\widgets\help_bottom_sheet.dart"
"videosharing\lib\common\widgets\login_bottom_sheet.dart"
"videosharing\lib\common\widgets\logout_bottom_sheet.dart"
"videosharing\lib\common\widgets\network_sensitivity_container.dart"
"videosharing\lib\common\widgets\offline_page.dart.dart"
"videosharing\lib\common\widgets\password_field.dart.dart"
"videosharing\lib\common\widgets\search_textfield.dart"
"videosharing\lib\common\widgets\submit_bottom_sheet.dart"
"videosharing\lib\common\widgets\tab_widget.dart"

----------------
already created "videosharing\lib\common\widgets\help_bottom_sheet.dart"

TextStyle() ------ many "TextStyle" class in flutter

mb- generally, 4 "TextStyle" class in flutter or  4 "TextStyle" class in this project

now, 3 "TextStyle" class in this project seen ---- {{mb= after importing cupertino library}} 


----------------

mb= use TextStyle() {{TextStyle class for text styling}} 
mb= dont use "TextStyle class " of package  cupertino.dart or painting.dart or rendering.dart or dart:ui  package 

import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

----------------
----------------

% ============================================================================================
% ============================================================================================
% ============================================================================================
% # Chapter - setting up dev and production dev with flutter dotenv  -----  time 46 mins ----- 

----------------

already created videosharing\lib\common\widgets\login_bottom_sheet.dart

% "D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\Screenshot (6813) --------------- time 38-----.png"

// we could just changed "project name" i.e, fashion to "videosharing" for future use after coping pasting from original file but instructor imported following 6 files with the VS code extension suggestion to remove error {{importing packages or dart files by "ctrl + .}}

import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/common/widgets/reusable_text.dart';
import 'package:videosharing/const/constants.dart';

// these didnot need any editing for future use after coping pasting from original file {{sn}}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


----------------
AppText --- don't press "Tab" for shortcut ---- type it to use "AppText" class constant 
to use shortcut for "AppText" class constant --- if "kstrings.dart" already imported , "branch" icon seen -- orange branches --not the "box" --- no file name "kstrings.dart" or String "type" seen for shortcut use ---- 


for.eg,

Center(
                child: ReusableText(
                  text: AppText.kLoginText,
                )
----------------

already created lib\common\widgets\logout_bottom_sheet.dart
----------------

already created lib\common\services\storage.dart
----------------

already created lib\src\entrypoint\controllers\tab_index_notifier.dart
----------------

already created lib\common\widgets\network_sensitivity_container.dart
----------------

already created lib\src\auth\controllers\password_notifier.dart
----------------
% D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\common\widgets\password_field.dart

already created lib\common\widgets\password_field.dart
----------------

% Warning     -------     in "constructor" by vs code  ----- "Blue" color warning ---- not seen in "instructor's code" ---- reason is missing  """super(key: key)""" in constructor
Constructors for public widgets should have a named 'key' parameter. Try adding a named parameter to the constructor.


class PasswordField extends StatelessWidget {
  const PasswordField({Key? key, required this.controller, this.focusNode, this.radius});
  // --------------------------------------------------------------------------------------- 
  final TextEditingController controller;
  final FocusNode? focusNode;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

warning for "key" parameter --- because of  """: super(key: key);""" missing
----------------

already created lib\common\widgets\search_textfield.dart
----------------

already created lib\common\widgets\submit_bottom_sheet.dart
----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------


----------------
======================================================================

ecommerce-flutter-django---G
https://github.com/pankaj-basnet/ecommerce-flutter-django---G


======================================================================
// also pasted git log in z---files-----.md 

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
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

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
$ date
Tue, Aug 27, 2024  3:16:30 PM

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
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

% =========================================================================================
% =========================================================================================
% =========================================================================================

% saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
$ git commit -am "------chapter----installing depencies and importing files----complete-"
[master 52a2409] ------chapter----installing depencies and importing files----complete-
 51 files changed, 1862 insertions(+), 67 deletions(-)
 create mode 100644 videosharing/assets/images/checkout.jpg
 create mode 100644 videosharing/assets/images/empty.jpg
 create mode 100644 videosharing/assets/images/experience.jpg
 create mode 100644 videosharing/assets/images/failed.jpg
 create mode 100644 videosharing/assets/images/getstarted.jpg
 create mode 100644 videosharing/assets/images/pic1- - Copy (2).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (3).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (4).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (5).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (6).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (7).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (8).png
 create mode 100644 videosharing/assets/images/pic1- - Copy (9).png
 create mode 100644 videosharing/assets/images/pic1- - Copy.png
 rename z-----git----done.txt => videosharing/lib/common/services/storage.dart (100%)
 create mode 100644 videosharing/lib/common/utils/enums.dart
 create mode 100644 videosharing/lib/common/utils/environment.dart
 create mode 100644 videosharing/lib/common/widgets/custom_app_bar copy.dart
 create mode 100644 videosharing/lib/common/widgets/custom_button.dart
 create mode 100644 videosharing/lib/common/widgets/custom_text.dart
 create mode 100644 videosharing/lib/common/widgets/custom_textfield.dart
 create mode 100644 videosharing/lib/common/widgets/divida.dart
 create mode 100644 videosharing/lib/common/widgets/email_textfield.dart
 create mode 100644 videosharing/lib/common/widgets/empty_screen_widget.dart
 create mode 100644 videosharing/lib/common/widgets/error_modal.dart
 create mode 100644 videosharing/lib/common/widgets/help_bottom_sheet.dart
 create mode 100644 videosharing/lib/common/widgets/login_bottom_sheet.dart
 create mode 100644 videosharing/lib/common/widgets/logout_bottom_sheet.dart
 create mode 100644 videosharing/lib/common/widgets/network_sensitivity_container.dart
 create mode 100644 videosharing/lib/common/widgets/offline_page.dart
 create mode 100644 videosharing/lib/common/widgets/password_field.dart
 create mode 100644 videosharing/lib/common/widgets/search_textfield.dart
 create mode 100644 videosharing/lib/common/widgets/shimmers/categories_shimmer.dart
 create mode 100644 videosharing/lib/common/widgets/shimmers/shimmer_widget.dart
 create mode 100644 videosharing/lib/common/widgets/submit_bottom_sheet.dart
 create mode 100644 videosharing/lib/common/widgets/tab_widget.dart
 create mode 100644 videosharing/lib/src/address/hooks/fetch_default_address.dart
 create mode 100644 videosharing/lib/src/auth/controllers/password_notifier.dart
 create mode 100644 videosharing/lib/src/entrypoint/controllers/tab_index_notifier.dart
 create mode 100644 videosharing/lib/src/home/widgets/notifications_widget.dart
 create mode 100644 z-----git----done.md
 create mode 100644 z----v-v-sh-notes--0011-------.md

<!-- saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master) -->
$ date
Thu, Aug 29, 2024  4:10:34 PM

% saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (master)
$ git log
commit 52a24097cb611b916211001b17e43f09bf0060c7 (HEAD -> master)
Author: Pankaj Basnet <pankajbasnet2020@hotmail.com>
Date:   Thu Aug 29 16:10:06 2024 +0545

    ------chapter----installing depencies and importing files----complete-

% =========================================================================================
% =========================================================================================
% =========================================================================================

% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



% =========================================================================================
% =========================================================================================
% =========================================================================================



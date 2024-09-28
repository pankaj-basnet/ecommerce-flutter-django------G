======================================================================

ecommerce-flutter-django------G
https://github.com/pankaj-basnet/ecommerce-flutter-django------G


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







saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (main)
$ date
Fri, Sep 13, 2024  8:53:08 PM

----------------------------------------------------------
----------------------------------------------------------

 create mode 100644 videosharing/lib/src/categories/controllers/category_notifier.dart
 create mode 100644 videosharing/lib/src/categories/models/categories_model copy.dart
 create mode 100644 videosharing/lib/src/categories/models/categories_model.dart
 create mode 100644 videosharing/lib/src/categories/views/categories_screen.dart
 create mode 100644 videosharing/lib/src/categories/views/category_page.dart
 create mode 100644 videosharing/lib/src/home/widgets/categories_list.dart
 create mode 100644 videosharing/lib/src/home/widgets/home_header.dart
 create mode 100644 videosharing/lib/src/home/widgets/home_slider.dart
 create mode 100644 videosharing/lib/src/home/widgets/notification_widget.dart
 delete mode 100644 videosharing/lib/src/home/widgets/notifications_widget.dart
 create mode 100644 videosharing/lib/src/notification/views/notification_screen.dart
 create mode 100644 videosharing/lib/src/search/views/search_screen.dart
 create mode 100644 z--------thrift-plus-----.md
 create mode 100644 z-----notes---data-entered-in-chapgpt---.md

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (main)
$ git log
commit a06a06e72ed434889f6f27cfb1a1a6833821a047 (HEAD -> main)
Author: Pankaj Basnet <pankajbasnet2020@hotmail.com>
Date:   Fri Sep 13 20:52:35 2024 +0545

    ----------------  time 4hr55m57s  ---------------- homepage to categories page to category page done ................................................................................




% =========================================================================================
% =========================================================================================
% =========================================================================================




# FLUTTER APPLICATION RUNNING PROPERLY ON ANDROID PHONE AND VSCODE ------ 240914-1741 ---- TIME 5HR-33-MIN--50-SEC
# FLUTTER APPLICATION RUNNING PROPERLY ON ANDROID PHONE AND VSCODE ------ 240914-1741 ---- TIME 5HR-33-MIN--50-SEC
# FLUTTER APPLICATION RUNNING PROPERLY ON ANDROID PHONE AND VSCODE ------ 240914-1741 ---- TIME 5HR-33-MIN--50-SEC
# FLUTTER APPLICATION RUNNING PROPERLY ON ANDROID PHONE AND VSCODE ------ 240914-1741 ---- TIME 5HR-33-MIN--50-SEC
Launching lib\main.dart on LN9910 in debug mode...

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if "Windows_NT" == "Windows_NT" setlocal

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set DEFAULT_JVM_OPTS=

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set DIRNAME=D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android\

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if "D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android\" == "" set DIRNAME=.

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set APP_BASE_NAME=gradlew

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set APP_HOME=D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android\

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if defined JAVA_HOME goto findJavaFromJavaHome

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set JAVA_HOME=C:\Program Files\Android\Android Studio\jre

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set JAVA_EXE=C:\Program Files\Android\Android Studio\jre/bin/java.exe

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if exist "C:\Program Files\Android\Android Studio\jre/bin/java.exe" goto init

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if not "Windows_NT" == "Windows_NT" goto win9xME_args

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if "@eval[2+2]" == "4" goto 4NT_args

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set CMD_LINE_ARGS=

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set _SKIP=2

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if "x-q" == "x" goto execute

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set CMD_LINE_ARGS=-q -Ptarget-platform=android-arm -Ptarget=D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\main.dart -Pbase-application-name=android.app.Application -Pdart-defines=RkxVVFRFUl9XRUJfQVVUT19ERVRFQ1Q9dHJ1ZQ==,RkxVVFRFUl9XRUJfQ0FOVkFTS0lUX1VSTD1odHRwczovL3d3dy5nc3RhdGljLmNvbS9mbHV0dGVyLWNhbnZhc2tpdC9lNzZjOTU2NDk4ODQxZTFhYjQ1ODU3N2QzODkyMDAzZTU1M2U0ZjNjLw== -Pdart-obfuscation=false -Ptrack-widget-creation=true -Ptree-shake-icons=false -Pfilesystem-scheme=org-dartlang-root assembleDebug

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>goto execute

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>set CLASSPATH=D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android\\gradle\wrapper\gradle-wrapper.jar

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>"C:\Program Files\Android\Android Studio\jre/bin/java.exe"    "-Dorg.gradle.appname=gradlew" -classpath "D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android\\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain -q -Ptarget-platform=android-arm -Ptarget=D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\main.dart -Pbase-application-name=android.app.Application -Pdart-defines=RkxVVFRFUl9XRUJfQVVUT19ERVRFQ1Q9dHJ1ZQ==,RkxVVFRFUl9XRUJfQ0FOVkFTS0lUX1VSTD1odHRwczovL3d3dy5nc3RhdGljLmNvbS9mbHV0dGVyLWNhbnZhc2tpdC9lNzZjOTU2NDk4ODQxZTFhYjQ1ODU3N2QzODkyMDAzZTU1M2U0ZjNjLw== -Pdart-obfuscation=false -Ptrack-widget-creation=true -Ptree-shake-icons=false -Pfilesystem-scheme=org-dartlang-root assembleDebug

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if "0" == "0" goto mainEnd

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\android>if "Windows_NT" == "Windows_NT" endlocal
√  Built build\app\outputs\flutter-apk\app-debug.apk.
Connecting to VM Service at ws://127.0.0.1:57708/2CLbvJKrisI=/ws
D/ProfileInstaller(24397): Installing profile for com.mayadigitechnepal.videosharing
I/gralloc (24397): gralloc_register_buffer hnd=0xa53a2880, share_fd=81, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x7e16f000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (24397): Shared attribute region not available to be mapped
I/gralloc (24397): gralloc_register_buffer hnd=0x8f809500, share_fd=83, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x7ddf1000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (24397): Shared attribute region not available to be mapped
I/gralloc (24397): gralloc_register_buffer hnd=0x8f80a280, share_fd=84, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x7d36f000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (24397): Shared attribute region not available to be mapped
Reloaded 6 of 1695 libraries in 3,986ms (compile: 87 ms, reload: 1145 ms, reassemble: 2162 ms).
I/gralloc (24397): gralloc_register_buffer hnd=0x908dcc80, share_fd=86, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x7ceef000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (24397): Shared attribute region not available to be mapped
I/gralloc (24397): gralloc_register_buffer hnd=0x908db180, share_fd=91, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x7bfac000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (24397): Shared attribute region not available to be mapped
I/flutter (24397): 1
I/flutter (24397): 2
I/flutter (24397): 3
E/FlutterJNI(24397): Failed to decode image
E/FlutterJNI(24397): android.graphics.ImageDecoder$DecodeException: Failed to create image decoder with message 'unimplemented'Input contained an error.
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.nCreate(Native Method)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.access$200(ImageDecoder.java:169)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder$ByteBufferSource.createImageDecoder(ImageDecoder.java:246)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.decodeBitmapImpl(ImageDecoder.java:1754)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.decodeBitmap(ImageDecoder.java:1747)
E/FlutterJNI(24397): 	at io.flutter.embedding.engine.FlutterJNI.decodeImage(FlutterJNI.java:559)
I/flutter (24397): 4
I/flutter (24397): 5
I/flutter (24397): 6
I/flutter (24397): 7
I/flutter (24397): 8
E/FlutterJNI(24397): Failed to decode image
E/FlutterJNI(24397): android.graphics.ImageDecoder$DecodeException: Failed to create image decoder with message 'unimplemented'Input contained an error.
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.nCreate(Native Method)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.access$200(ImageDecoder.java:169)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder$ByteBufferSource.createImageDecoder(ImageDecoder.java:246)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.decodeBitmapImpl(ImageDecoder.java:1754)
E/FlutterJNI(24397): 	at android.graphics.ImageDecoder.decodeBitmap(ImageDecoder.java:1747)
E/FlutterJNI(24397): 	at io.flutter.embedding.engine.FlutterJNI.decodeImage(FlutterJNI.java:559)
I/flutter (24397): 9
I/flutter (24397): 10





% =========================================================================================
% =========================================================================================
% =========================================================================================

# Sunday, September 15, 2024 8:01:18 AM
# Sunday, September 15, 2024 8:01:18 AM
# Sunday, September 15, 2024 8:01:18 AM
<!-- starting android emulator -->

Starting device daemon...
[ERR] Error 1 retrieving device properties for LN9910:
[ERR] adb.exe: device 'LN9910222K4002619' not found

[ERR] The Android emulator exited with code -805306369 after startup
[ERR] Android emulator stderr:
[ERR] INFO    | Ignore IPv6 address: 38dd:e4f:3e02:0:70c3:e4f:3e02:0 (2x)
[ERR] WARNING | FeatureControl is requesting a non existing feature.
[ERR] WARNING | The emulator now requires a signed jwt token for gRPC access! Use the -grpc flag if you really want an open unprotected grpc port
[ERR] WARNING | *** Basic token auth should only be used by android-studio ***
[ERR] Address these issues and try again.


% =========================================================================================
% =========================================================================================
% =========================================================================================

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (main)
$ git commit -am "----------------  time 6hr17m25s  ---------------- home page done -- wishlist little done -- ProductPage started -- ................................................................................"
[main e6b32cb] ----------------  time 6hr17m25s  ---------------- home page done -- wishlist little done -- ProductPage started -- ................................................................................
 21 files changed, 1275 insertions(+), 234 deletions(-)
 create mode 100644 videosharing/lib/src/home/controllers/home_tab_notifier.dart
 create mode 100644 videosharing/lib/src/home/widgets/home_tabs.dart
 create mode 100644 videosharing/lib/src/products/controllers/product_notifier.dart
 create mode 100644 videosharing/lib/src/products/models/products_model.dart
 create mode 100644 videosharing/lib/src/products/views/product_screen.dart
 create mode 100644 videosharing/lib/src/products/widgets/explore_products.dart
 create mode 100644 videosharing/lib/src/products/widgets/staggered_tile_widget.dart
 delete mode 100644 z-----git----done---github-done--.md
 create mode 100644 z-----git---terminal---done---github-done--.md

% =========================================================================================
% =========================================================================================
% =========================================================================================

Tue, Sep 17, 2024  2:57:52 PM


% 
saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech-- (main)
$ git commit -am "files created with no code ----needed until VIDEO-2---TIME 25min----V1-6hr50m--product page half done------------------------------------------------------------  time 6hr50s  ---------------- "
[main c45560a] files created with no code ----needed until VIDEO-2---TIME 25min----V1-6hr50m--product page half done------------------------------------------------------------  time 6hr50s  ----------------
 35 files changed, 1330 insertions(+), 29 deletions(-)
 create mode 100644 videosharing/lib/src/auth/controllers/auth_notifier.dart
 create mode 100644 videosharing/lib/src/auth/models/auth_token_model.dart
 create mode 100644 videosharing/lib/src/auth/models/login_model.dart
 create mode 100644 videosharing/lib/src/auth/models/profile_model.dart
 create mode 100644 videosharing/lib/src/auth/models/registration_model.dart
 create mode 100644 videosharing/lib/src/auth/views/registration_screen.dart
 create mode 100644 videosharing/lib/src/auth/views/verification_screen.dart
 create mode 100644 videosharing/lib/src/categories/hook/fetch_categories.dart
 create mode 100644 videosharing/lib/src/categories/hook/fetch_home_categories.dart
 create mode 100644 videosharing/lib/src/categories/hook/results/categories_results.dart
 create mode 100644 videosharing/lib/src/products/controllers/colors_sizes_notifier.dart
 create mode 100644 videosharing/lib/src/products/widgets/color_selection_widget.dart
 create mode 100644 videosharing/lib/src/products/widgets/expandable_text.dart
 create mode 100644 videosharing/lib/src/products/widgets/product_bottom_bar.dart
 create mode 100644 videosharing/lib/src/products/widgets/product_sizes_widget.dart
 create mode 100644 videosharing/lib/src/products/widgets/similar_products.dart
 create mode 100644 videosharing/lib/src/profile/views/orders_screen.dart
 create mode 100644 videosharing/lib/src/profile/views/policy_screen.dart
 create mode 100644 videosharing/lib/src/profile/views/shipping_address_screen.dart
 create mode 100644 videosharing/lib/src/profile/widget/tile_widget.dart
 create mode 100644 z-----remember--todo--imp---240917---.md
 create mode 100644 z----v-v-sh-notes--0022-------.md



% =========================================================================================
% =========================================================================================
% =========================================================================================




saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech--backend/dj24 (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   fashion_backend/backend/__pycache__/settings.cpython-312.pyc
        modified:   fashion_backend/backend/__pycache__/urls.cpython-312.pyc
        modified:   fashion_backend/backend/settings.py
        modified:   fashion_backend/backend/urls.py
        modified:   fashion_backend/db.sqlite3
        modified:   requirements.txt
        modified:   z-------git-done----github-not-done--.md
        modified:   z-------terminal---imp--.md
        modified:   z------notes-----v-v-v-sh---.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        fashion_backend/core/
        requirements2-0926-.txt
        z-------packages-------.md

no changes added to commit (use "git add" and/or "git commit -a")

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech--backend/dj24 (main)
$ git add .

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech--backend/dj24 (main)
$ git commit -am "=============          ===================          VID-02           ==================             categories page loading with data from django backend ----  time V-2---0-hr-24-min   ============================================================================="
[main 16ef3b4] =============          ===================          VID-02           ==================             categories page loading with data from django backend ----  time V-2---0-hr-24-min   =============================================================================
 34 files changed, 508 insertions(+), 27 deletions(-)
 create mode 100644 fashion_backend/core/__init__.py
 create mode 100644 fashion_backend/core/__pycache__/__init__.cpython-312.pyc
 create mode 100644 fashion_backend/core/__pycache__/admin.cpython-312.pyc
 create mode 100644 fashion_backend/core/__pycache__/apps.cpython-312.pyc
 create mode 100644 fashion_backend/core/__pycache__/models.cpython-312.pyc
 create mode 100644 fashion_backend/core/__pycache__/serializers.cpython-312.pyc
 create mode 100644 fashion_backend/core/__pycache__/urls.cpython-312.pyc
 create mode 100644 fashion_backend/core/__pycache__/views.cpython-312.pyc
 create mode 100644 fashion_backend/core/admin.py
 create mode 100644 fashion_backend/core/apps.py
 create mode 100644 fashion_backend/core/migrations/0001_initial.py
 create mode 100644 fashion_backend/core/migrations/__init__.py
 create mode 100644 fashion_backend/core/migrations/__pycache__/0001_initial.cpython-312.pyc
 create mode 100644 fashion_backend/core/migrations/__pycache__/__init__.cpython-312.pyc
 create mode 100644 fashion_backend/core/models.py
 create mode 100644 fashion_backend/core/serializers.py
 create mode 100644 fashion_backend/core/templatetags/__init__.py
 create mode 100644 fashion_backend/core/templatetags/__pycache__/__init__.cpython-312.pyc
 create mode 100644 fashion_backend/core/templatetags/__pycache__/customtags.cpython-312.pyc
 create mode 100644 fashion_backend/core/templatetags/customtags.py
 create mode 100644 fashion_backend/core/tests.py
 create mode 100644 fashion_backend/core/urls.py
 create mode 100644 fashion_backend/core/views.py
 create mode 100644 requirements2-0926-.txt
 create mode 100644 z-------packages-------.md

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/z--proj/ecommerce-flutter-django-dbestech--backend/dj24 (main)
$ date
Fri, Sep 27, 2024  2:00:55 PM




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



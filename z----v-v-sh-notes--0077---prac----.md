<!--        ======       This file for notes for practice        ======        -->
<!--        ======       This file for notes for practice        ======        -->
<!--        ======       This file for notes for practice        ======        -->
<!--        ======       This file for notes for practice        ======        -->
<!--        ======       This file for notes for practice        ======        -->
<!--        ======       This file for notes for practice        ======        -->

---D--:\src_dev\z--proj\ecommerce-flutter-django-dbestech--backend\dj24\fashion_backend\core\urls.py


=========               VERY IMPORTANT NOTE             ==============
=========               VERY IMPORTANT NOTE             ==============


<!-- time 10hr + -->

//       
python manage.py runserver 0.0.0.0:8000
http://192.168.43.167:8000/admin/login/?next=/admin/


System check identified no issues (0 silenced).
September 25, 2024 - 17:02:31
Django version 5.1.1, using settings 'backend.settings'
Starting development server at http://0.0.0.0:8000/
Quit the server with CTRL-BREAK.


=========               VERY IMPORTANT NOTE             ==============
================================================================//>>==


/// 240922 ///

/// ERROR:  lot of instructor's code commented out ----- because overflowed problem on "LAVA"
/// was not able to adjust height of help_bottom_sheet.dart --- profile_screen.dart ---- lib\common\widgets\help_bottom_sheet.dart
D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8570).png


// ElevatedButton(onPressed: () {}, child: Text('data')),     // <--- error: invalid contant value

------------------------------------------------------

videosharing\lib\src\profile\views\profile_screen.dart

videosharing\lib\common\widgets\help_bottom_sheet.dart

videosharing\lib\src\profile\views\orders_screen.dart
videosharing\lib\src\profile\views\shipping_address_screen.dart

videosharing\lib\src\profile\views\policy_screen.dart
videosharing\lib\common\utils\kstrings.dart

------------------------------------------------------
time 8hr-19m


D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8602).png

------------------------------------------------------


before "Orders","shipping" show,-- now, after if ""(accessToken == null) {  return LoginPage();}""--- gone to login screen
"Orders","shipping address", "privacy policy", "help center" ---- will be seen after login of user {{mb= in future, functionality added}}

------------------------------------------------------

time 8hr-40m----240923
D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8639).png

------------------------------------------------------

EmailTextField() used for both "Username" and "Email" for Registration page.

in "username", make "_emailNode" instead of "_passwordNode" {{mb= sn=}}

------------------------------------------------------
------------------------------------------------------

<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
<!-- Until 9 hr 33 min    ============    not complete note done  -->
only few notes taken

videosharing\lib\src\auth\models\auth_token_model.dart

------------------------------------------------------

from  9 hr 33 min    ============     all files name worked on done
from  9 hr 33 min    ============     all files name worked on done
from  9 hr 33 min    ============     all files name worked on done
from  9 hr 33 min    ============     all files name worked on done
from  9 hr 33 min    ============     all files name worked on done
from  9 hr 33 min    ============     all files name worked on done

------------------------------------------------------

videosharing\lib\src\auth\models\auth_token_model.dart
videosharing\lib\src\auth\models\registration_model.dart

videosharing\lib\main.dart


------------------------------------------------------
videosharing\lib\src\auth\controllers\auth_notifier.dart

<!-- screenshots of whole file --- auth\controllers\auth_notifier.dart -- lot of code -->
D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8709).png

------------------------------------------------------
videosharing\lib\src\auth\views\login_screen.dart
videosharing\lib\src\auth\views\registration_screen.dart

------------------------------------------------------
videosharing\lib\src\auth\views\login_screen.dart

// self practice
// String accessToken = accessTokenModelFromJson(response.body).authToken; // isn= {{ uncomment later -- imp -- {{sn=}}}}
        
        String accessToken = '3a3b1e181784ec113ac974da4326425c9c4a31d3';


------------------------------------------------------

after log in done, CircularProgressIndicator keeps rotating --- not seen in isn --- time 10hr-07m ----- later solved by isn in 10hr-42m
in "lava" , rotating CircularProgressIndicator doesnot stop --- moving ahead without solving in lava --- in 10hr-42m, isn will solve


------------------------------------------------------
getUser --- videosharing\lib\src\auth\controllers\auth_notifier.dart

profile_screen.dart --- Storage().removeKey('accessToken');

------------------------------------------------------

=========               VERY IMPORTANT NOTE             ==============
=========               VERY IMPORTANT NOTE             ==============


<!-- time 10hr + -->

//       
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
http://192.168.43.167:8000/admin/login/?next=/admin/


System check identified no issues (0 silenced).
September 25, 2024 - 17:02:31
Django version 5.1.1, using settings 'backend.settings'
Starting development server at http://0.0.0.0:8000/
Quit the server with CTRL-BREAK.


=========               VERY IMPORTANT NOTE             ==============
================================================================//>>==

python manage.py runserver 0.0.0.0:8000

// BACKEND -- dj24\fashion_backend\backend\settings.py
dj24\fashion_backend\backend\settings.py
ALLOWED_HOSTS = ['*']

10.0.2.2

------------------------------------------------------

videosharing\lib\src\auth\controllers\auth_notifier.dart

------------------------------------------------------


  void loginFunc ------> delete  /// TODO: Get User Info

        /// TODO: Get User Extras
getUser(accessToken)

------------------------------------------------------

"login"  does not work ---- error in dj24\fashion_backend\backend\settings.py
    #  'DEFAULT_AUTHENTIFICATION_CLASSES': <---- changed spelling from  "'DEFAULT_AUTHENTIFICATION_CLASSES'" time 10hr-21m 

may be --- for token create,   'DEFAULT_AUTHENTIFICATION_CLASSES' is not run by djoser, even if it is wrong spelling.--- for users data , "AUTHENTICATOIN" needed --- right spelling.

------------------------------------------------------

videosharing\lib\src\auth\models\profile_model.dart

videosharing\lib\src\auth\controllers\auth_notifier.dart

------------------------------------------------------

videosharing\lib\src\profile\views\profile_screen.dart

------------------------------------------------------
videosharing\lib\src\auth\views\registration_screen.dart
videosharing\lib\src\auth\controllers\auth_notifier.dart

[25/Sep/2024 20:42:08] "POST /auth/users/ HTTP/1.1" 400  ---- showErrorPopup didnot work as expected because it was 500 error---- {{mb= django server doesnot stop and flutter  gets 500 error response from django}} --- flutter didnot handle 500 error, and continuous 
if URL doesn't end in a slash -- 500 server error --- django

------------------------------------------------------

RuntimeError: You called this URL via POST, but the URL doesn't end in a slash and you have APPEND_SLASH set. Django can't redirect to the slash URL while maintaining POST data. Change your form to point to 192.168.43.167:8000/auth/users/ (note the trailing slash), or set APPEND_SLASH=False in your Django settings.

[25/Sep/2024 20:46:16] "POST /auth/users/ HTTP/1.1" 201 53

------------------------------------------------------

D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8781).png 

------------------------------------------------------

i can't find why when isLoading is 'true', CircularProgressIndicator keeps rotating ---- how to implement this in other project

------------------------------------------------------

blank username password in signup or registration --- 400 error in django server backend
https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/400 --- 


I/flutter (25419): ---- 400 ----.- { --- 400 error in django server backend}
I/flutter (25419): ---- {username: [This field may not be blank.], password: [This field may not be blank.]} ----.- {{flutter debug console}}

------------------------------------------------------

time 10hr-38m --- example, asynchronous programming or task with output printed during login --- check auth_notifier.dart for code execution

I/flutter (25419): ----/auth/token/login
I/flutter (25419): .--------200--..--
I/flutter (25419): ----login page ---> accessToken: d1e228f5451dfab04ccd72cca66fa188834ec631
I/flutter (25419): ----getting user data -- ---- this is getUser func--
I/flutter (25419): ----d1e228f5451dfab04ccd72cca66fa188834ec631 -- -.--- this is getUser func--
I/flutter (25419): ----getting user data -- complete ---- this is login page ---
I/flutter (25419): ---- login comple ----
I/flutter (25419): ---- login complete ----
I/flutter (25419): {"email":"a@gmail.com","id":4,"username":"aaa"}
I/flutter (25419): ----getUser func ---> accessToken: d1e228f5451dfab04ccd72cca66fa188834ec631
I/flutter (25419): ---- get user data compl... ----
I/flutter (25419): ---- get user data complete ----

------------------------------------------------------

signup/ register user and login working fine in lava but not in isn tutorial
isn has circular progress indicator rotation in login screen after successful signup ---so, "RLoading" put in various places 

------------------------------------------------------

setRLoading(); --- showErrorPopup(ctx, AppText.kErrorLogin, null, null);

------------------------------------------------------

after creating and setting setRLoading(); --- signup/ register user and login working fine as before
------------------------------------------------------

# BACKEND

dj24\fashion_backend\core\models.py
dj24\fashion_backend\core\admin.py
dj24\fashion_backend\core\serializers.py
dj24\fashion_backend\core\views.py

------------------------------------------------------

https://docs.djangoproject.com/en/5.1/topics/db/aggregation/#cheat-sheet
        # print(queryset[0].random_order)           # sn=


------------------------------------------------------
filter the queryset of any view that subclasses GenericAPIView is to override the .get_queryset() method --- https://www.django-rest-framework.org/api-guide/filtering/

------------------------------------------------------

dj24\fashion_backend\core\views.py --- TIME 11hr-15m to 11hr-45m
why in ProductListByClothesType ---> serializers.ProductSerializer(limited_products, many= True) is used ? in other classes not used ---- { isn tried this method different from method used in other clases --- explaination in time 11hr-37m }

------------------------------------------------------
D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--backend\dj24\fashion_backend\core\urls.py

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--backend\dj24\fashion_backend\backend\urls.py

------------------------------------------------------

#       VIDEO - 2     ============     PART - 2222
#       VIDEO - 2     ============     PART - 2222
#       VIDEO - 2     ============     PART - 2222
#       VIDEO - 2     ============     PART - 2222
#       VIDEO - 2     ============     PART - 2222

------------------------------------------------------
D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8846).png

------------------------------------------------------

DJANGO BACKEND ON LOCAL HOST 8000 working properly
DJANGO BACKEND ON LOCAL HOST 8000 working properly
DJANGO BACKEND ON LOCAL HOST 8000 working properly
DJANGO BACKEND ON LOCAL HOST 8000 working properly
DJANGO BACKEND ON LOCAL HOST 8000 working properly

http://127.0.0.1:8000/auth/token/login/
http://127.0.0.1:8000/admin/
http://127.0.0.1:8000/auth/users/me/ ---- works but didnot get djoser result

api/product/myproduct

------------------------------------------------------

http://127.0.0.1:8000/api/product/myproduct             // <--- didnot work
http://127.0.0.1:8000/api/product/categories/           // <--- didnot work

------------------------------------------------------

http://192.168.43.167:8000/api/products/myproduct             // <--- didnot work
http://192.168.43.167:8000/api/products/categories             // <--- didnot work
http://192.168.43.167:8000/admin/ --------- works fine
http://192.168.43.167:8000/auth/token/login --------- works fine

D:\src--FOLDER\FLUTTER\TUTORIALS\ecommerce-flutter-django-dbestech--scr\time--6hr-24m---to--VID-2--0hr-29m--\Screenshot (8854).png


------------------------------------------------------

http://192.168.43.167:8000/api/products/categories --------- works fine
http://192.168.43.167:8000/api/products/categories/home/ --------- works fine
http://192.168.43.167:8000/api/products/myproduct             // <--- didnot work

------------------------------------------------------
https://www.django-rest-framework.org/api-guide/requests/ --- recommend using request.query_params instead of the Django's standard request.GET. Doing so will help keep your codebase more correct and obvious - any HTTP method type may include query parameters, not just GET requests.

------------------------------------------------------

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--backend\dj24\fashion_backend\core\views.py
http://127.0.0.1:8000/api/products/byType/?clothesType=women----http://127.0.0.1:8000/api/products/byType/?clothesType=unisex
http://127.0.0.1:8000/api/products/

------------------------------------------------------

http://127.0.0.1:8000/api/products/categories/---http://127.0.0.1:8000/api/products/category/?category=6---
http://127.0.0.1:8000/api/products/category/?category=1---127.0.0.1:8000/api/products/category/?category=3

------------------------------------------------------


videosharing\lib\src\categories\hook\results\category_products_results.dart
videosharing\lib\src\categories\hook\fetch_products_by_category.dart
videosharing\lib\src\categories\hook\results\category_products_results.dart

------------------------------------------------------

videosharing\lib\src\categories\hook\results\categories_results.dart 

videosharing\lib\src\categories\hook\fetch_categories.dart

  useEffect(() { // useEffect will run whenever "categories page" will run isn=
useState()

https://www.dhiwise.com/post/flutter-valuenotifier-an-essential-tool-for-state-management

------------------------------------------------------

class CategoriesPage extends StatelessWidget {
class CategoriesPage extends HookWidget { ---- import 'package:flutter_hooks/flutter_hooks.dart';

------------------------------------------------------


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


------------------------------------------------------
videosharing\lib\src\categories\hook\fetch_home_categories.dart

videosharing\lib\src\home\widgets\categories_list.dart

videosharing\lib\common\widgets\shimmers\categories_shimmer.dart
videosharing\lib\common\widgets\shimmers\shimmer_widget.dart

videosharing\lib\src\home\widgets\categories_list.dart

------------------------------------------------------

videosharing\lib\src\categories\views\category_page.dart
videosharing\lib\src\products\widgets\explore_products.dart
videosharing\lib\src\categories\views\category_page.dart

------------------------------------------------------

"extract widget" ----> vs code / flutter/ dart extension ---- make separate the widget including child widgets and attach to the main widget
"ProductsByCategory" class is created with "extract widget" ----> vs code / flutter/ dart extension ---- videosharing\lib\src\categories\views\category_page.dart

https://medium.com/flutter-community/flutter-visual-studio-code-shortcuts-for-fast-and-efficient-development-7235bc6c3b7d
Just click on any widget and then click Ctrl+. and click Extract Widget option and give a name for the new widget and click Enter and that’s it.

"""move 'ProductsByCategory' to file""" ---> click Ctrl+. and click (((move 'ProductsByCategory' to file))) option 

------------------------------------------------------

created with vs code shortcut --- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\widgets
created with vs code shortcut --- lib\src\categories\widgets\products_by_category.dart

------------------------------------------------------

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\views\category_page.dart
D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\widgets\products_by_category.dart

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\views\category_page.dart

------------------------------------------------------

already created --- lib\common\widgets\shimmers\list_shimmer.dart -- ListShimmer()

------------------------------------------------------

copy repeated code --- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\views\categories_screen.dart

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\widgets\products_by_category.dart

copy repeated code --- D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\home\widgets\categories_list.dart

------------------------------------------------------

create D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\fetch_products_by_category.dart

------------------------------------------------------

copy code from any hook created already --- like videosharing\lib\src\categories\hook\fetch_home_categories.dart

paste into D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\fetch_products_by_category.dart


------------------------------------------------------

copy code from D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\results\categories_results.dart

paste into D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\results\category_products_results.dart

------------------------------------------------------

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\fetch_products_by_category.dart

------------------------------------------------------

vscode shortcut --- "Remove unnecessary interpolation braces" ---- ${string_name}

------------------------------------------------------

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\widgets\products_by_category.dart
check D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\controllers\category_notifier.dart

------------------------------------------------------
error ---- no products displayed in each category --- no error in backend django ---- 

D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\categories\hook\fetch_products_by_category.dart
error ---- type 'Null' is not a subtype of type 'double'
check "double" --- mb= "ratings" parameter --- check D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\products\models\products_model.dart

spelling mistake "rating" ----- change to "ratings"

don't make spelling mistake in Product model's field in both flutter and django --- products\models\products_model.dart
products\models\products_model.dart --- dj24\fashion_backend\core\models.py

python manage.py makemigrations

------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------


------------------------------------------------------
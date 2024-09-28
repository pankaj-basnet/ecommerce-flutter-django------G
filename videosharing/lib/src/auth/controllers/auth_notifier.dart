import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/environment.dart';
import 'package:http/http.dart' as http;
import 'package:videosharing/common/utils/kstrings.dart';
import 'package:videosharing/common/widgets/error_modal.dart';
import 'package:videosharing/src/auth/models/auth_token_model.dart';
import 'package:videosharing/src/auth/models/profile_model.dart';
import 'package:videosharing/src/entrypoint/controllers/bottom_tab_notifier.dart';

class AuthNotifier with ChangeNotifier {

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool v) {
    _isLoading = v ;
    notifyListeners();
  }

  bool _isRLoading = false;

  bool get isRLoading => _isRLoading;

  void setRLoading() {
    _isRLoading = !_isRLoading;
    notifyListeners();
  }

  void loginFunc(String data, BuildContext ctx) async {
    setLoading(true);

    try {
      print('----/auth/token/login'); // delele this line by sn= $$$$$$$$$
      var url = Uri.parse('${Environment.appBaseUrl}/auth/token/login');
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: data);
      print(
          '.--------${response.statusCode}--..--'); // delele this line by sn= $$$$$$$$$

      if (response.statusCode == 200) {
        String accessToken = accessTokenModelFromJson(response.body)
            .authToken; // isn= {{ uncomment later -- imp -- {{sn=}}}}

        // String accessToken = '3a3b1e181784ec113ac974da4326425c9c4a31d3'; // sn= {comment this later}

        print('----login page ---> accessToken: $accessToken');

        // Storage().setString('accessToken', accessToken); // sn= {{ TEMPORARY solution --- GET USER DATA BUTTON}}

        /// TOD-o : Get User Info ----- done

        /// TOD-o : Get User Extras ----- done

        getUser(accessToken, ctx); // sn= {{temporary comment this functionality }} --- error --- AUTHENTIFICATION DJOSER -DRF
        print(
            '----getting user data -- complete ---- this is login page ---'); // sn=

        print('---- login comple ----'); // sn=

        // ctx.read<TabIndexNotifier>().setIndex(0); // sn= {not isn} // temporary uncomment it time 10hr-15m
        // ctx.go('/home'); // not used ctx.push('/home'); {{sn=}} // temporary uncomment it time 10hr-15m

        print('---- login complete ----'); // sn=

        setLoading(false);
      }
    } catch (e) {
      print(e); // delele this line by sn= $$$$$$$$$

      setLoading(false);
      showErrorPopup(ctx, AppText.kErrorLogin, null, null);
    }
  }

  void registrationFunc(String data, BuildContext ctx) async {
    setRLoading();

    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/users/');
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: data);

      print('---- ${response.statusCode} ----.-'); //sn=

      if (response.statusCode == 201) {
        print(response.body);
        setRLoading();
        ctx.pop();
      } else if (response.statusCode == 400) {
                print(response.body);

        setRLoading();
        var data = jsonDecode(response.body);

        print('---- $data ----.-'); //sn=
        showErrorPopup(ctx, data['password'][0], null, null);
      } else {
        // sn=
        ctx.push('/categories');
      }
    } catch (e) {
      setRLoading();
      showErrorPopup(ctx, AppText.kErrorLogin, null, null);

              print('---- error ----.-'); //sn=

      
    }
  }

  void getUser(String accessToken, BuildContext ctx) async {
    print(
        '----getting user data -- ---- this is getUser func--'); // sn= delete this later
    print(
        '----$accessToken -- -.--- this is getUser func--'); // sn= delete this later

    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/users/me');
      var response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Token $accessToken'
        },
      );

      if (response.statusCode == 200) {
        // String accessToken = accessTokenModelFromJson(response.body).authToken; // {{not done like login Func sn=}}

        // Storage().setString('accessToken', accessToken); // {{not done like login Func sn=}}

        Storage().setString('accessToken', accessToken);

        print(response.body);
        print('----getUser func ---> accessToken: $accessToken'); //sn=

        Storage().setString(
            accessToken,
            response
                .body); // {{ TEMPORARY COMMENT IT --- GET USER DATA BUTTON}}

        ctx.read<TabIndexNotifier>().setIndex(0);
        ctx.go('/home');

        /// TOD-0: Get user info --- done

        /// TOD-o: get user extras --- done

        print(
            '---- get user data compl... ----'); // sn= {{ doesn't print con=}}

        // setLoading();
        // ctx.go('/home');

        print(
            '---- get user data complete ----'); // sn= {{ doesn't print con=}}
      }
    } catch (e) {
      // setLoading(); //  sn= {mb= this caused CircularProgressIndicator to continuously rotate }
      print(e.toString());
      showErrorPopup(ctx, AppText.kErrorLogin, null, null);
    }
  }

  ProfileModel? getUserData() {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken != null) {
      var data = Storage().getString(accessToken);
      if (data != null) {
        return ProfileModel.fromJson(jsonDecode(data));
      }
    }
  }
}

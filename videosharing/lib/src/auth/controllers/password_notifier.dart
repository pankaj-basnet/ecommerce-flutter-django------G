import 'package:flutter/material.dart';

class PasswordNotifier with ChangeNotifier {
  bool _password = true;

  bool get password => _password;

  // void setPassword(bool value) {
  //   _password = value;
  //   notifyListeners();
  // }

  void setPassword() {
    _password = !_password;
    notifyListeners();
  }


}

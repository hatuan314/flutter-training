import 'package:flutter/foundation.dart';
import 'package:flutterdemoapp/homework/ex51/model/account.dart';
import 'package:flutterdemoapp/ui/view_model/base_view_model.dart';

class LoginScreenViewModel extends BaseViewModel {
  String _email;
  String _password;

  String get email => _email;

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  String get password => _password;

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  Future login() {
    debugPrint(
        'ACCOUNT: ${Account(email: this.email, password: this.password).toJson()}');
  }
}

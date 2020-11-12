import 'dart:async';

import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:diary_account_book/module/utils/loadingUtils/loading_utils.dart';
import 'package:diary_account_book/module/utils/localUtils/local_utils.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  // 账户
  String _phone = '';
  String get phone => _phone;

  Color _phoneColor = ColorsUtil.hexColor(0x999999);
  Color get phoneColor => _phoneColor;
  // 密码
  String _password = '';
  String get password => _password;

  Color _passwordColor = ColorsUtil.hexColor(0x999999);
  Color get passwordColor => _passwordColor;

  bool _loginButtonEnable = false;
  bool get loginButtonEnable => _loginButtonEnable;

  void setPhone(String phone) {
    _phone = phone;
    checkPhone();
  }

  void setPassword(String password) {
    _password = password;
    checkPassword();
  }

  void checkPhone() {
    if (this.phone.length == 11) {
      _phoneColor = ColorsUtil.hexColor(0x5DC78D);
    } else {
      _phoneColor = ColorsUtil.hexColor(0x999999);
    }

    notifyListeners();
    checkloginButton();
  }

  void checkPassword() {
    if (this.password.length > 5) {
      _passwordColor = ColorsUtil.hexColor(0x5DC78D);
    } else {
      _passwordColor = ColorsUtil.hexColor(0x999999);
    }
    notifyListeners();
    checkloginButton();
  }

  void checkloginButton() {
    if (this.phone.length == 11 && this.password.length > 5) {
      _loginButtonEnable = true;
    } else {
      _loginButtonEnable = false;
    }
    notifyListeners();
  }

  Future login() async {
    print('click login');
    LoadingUtils().show(status: '登录中...');
    Completer completer = new Completer();
    Future.delayed(Duration(seconds: 5), () {
      print('delayed');
      LoadingUtils().dismiss();
      LoadingUtils().showSuccess(status: '登录成功');
      LocalUtils.getInstance().setString(LocalUtils.token, this.phone);
      return completer.complete();
    });
    return completer.future;
  }
}

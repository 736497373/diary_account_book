import 'package:diary_account_book/module/utils/appNavUtils/AppNavUtils.dart';
import 'package:diary_account_book/module/utils/colorUtils/ColorsUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'widget/login_home_other_methods_widget.dart';
import 'widget/login_home_phone_input_widget.dart';
import 'widget/login_home_tip_widget.dart';

class LoginHomePage extends StatelessWidget {
  const LoginHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavUtil(
      title: '登录',
      isBack: false,
      isAppNav: false,
      body: Container(
        color: ColorsUtil.hexColor(0xF5F5F5),
        child: Stack(
          children: [
            Positioned(top: 104, left: 30, child: LoginHomeTipWidget()),
            Positioned(top: 220, left: 0, child: LoginHomePhoneInputWidget()),
            Positioned(
                top: ScreenUtil().setHeight(809 - 200),
                left: 0,
                child: LoginHomeOtherMethodsWidget()),
          ],
        ),
      ),
    );
  }
}

import 'package:diary_account_book/module/page/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'module/page/login/login_home_page.dart';
import 'module/utils/routerNavUtils/router_nav_utils.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RouterNavigatorUtils.navigatorKey,
      builder: (context, child) {
        return Material(
          child: FlutterEasyLoading(
            child: child,
          ),
        );
      },
      home: _AppPageState(),
    );
  }
}

class _AppPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 809);
    ScreenUtil().setSp(12);
    return LoginHomePage();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'module/page/login/login_home_page.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

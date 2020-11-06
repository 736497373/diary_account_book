import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'module/page/login/login_home_page.dart';
import 'module/page/root/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyAppState(),
    );
  }
}

class _MyAppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 809);
    ScreenUtil().setSp(12);
    return LoginHomePage();
  }
}

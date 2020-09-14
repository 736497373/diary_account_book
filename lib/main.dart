import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'module/page/root/rootPage.dart';

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
    ScreenUtil.init(context, width: 750, height: 1334);
    ScreenUtil().setSp(12);
    return RootPage();
  }
}

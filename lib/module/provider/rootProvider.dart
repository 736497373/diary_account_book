import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class RootPagePrivider extends ChangeNotifier {
  Tween<Size> _drawerTween;

  Tween<Size> get drawerTween => _drawerTween;
  void openDrawer() {
    Tween<Size> openDrawer = Tween(
        begin: Size(ScreenUtil.screenWidth, ScreenUtil.screenHeight),
        end:
            Size(ScreenUtil.screenWidth * 0.65, ScreenUtil.screenHeight * 0.8));
    _drawerTween = openDrawer;
    notifyListeners();
  }

  void closeDrawer() {
    Tween<Size> closeDrawer = Tween(
        begin: Size(ScreenUtil.screenWidth, ScreenUtil.screenHeight),
        end:
            Size(ScreenUtil.screenWidth * 0.65, ScreenUtil.screenHeight * 0.8));

    _drawerTween = closeDrawer;
    notifyListeners();
  }
}

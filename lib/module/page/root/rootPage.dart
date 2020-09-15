import 'package:diary_account_book/module/page/drawer/rightDrawer.dart';
import 'package:diary_account_book/module/page/main/mainPage.dart';
import 'package:diary_account_book/module/services/EventBusUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootPage extends StatefulWidget {
  RootPage({Key key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  bool _openDrawer = false;
  double _circularValue = 0.0;
  Animation<Size> animation; //动画对象
  AnimationController controller; //动画控制器

  void openDrawer() {
    Tween<Size> openDrawer = Tween(
        begin: Size(ScreenUtil.screenWidth, ScreenUtil.screenHeight),
        end: Size(ScreenUtil.screenWidth * 0.5, ScreenUtil.screenHeight * 0.8));
    animation = openDrawer.animate(controller);
    animation.addListener(() {
      setState(() => {});
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        _circularValue = 0;
      } else {
        _circularValue = 30;
      }
    });
  }

  @override
  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    openDrawer();

    eventBus.on<RootPageEvent>().listen((event) {
      _openDrawer = !_openDrawer;
      if (_openDrawer) {
        controller.forward();
      } else {
        controller.reverse();
      }
    });

    ///动画开始
  }

  @override
  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(overflow: Overflow.visible, children: [
      RightDrawerPage(),
      Positioned(
          top: (ScreenUtil.screenHeight - animation.value.height) * 0.5,
          right: ScreenUtil.screenWidth - animation.value.width,
          bottom: (ScreenUtil.screenHeight - animation.value.height) * 0.5,
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.all(Radius.circular(_circularValue)),
            child: Container(
              child: MainPage(),
              height: ScreenUtil.screenHeight,
              width: ScreenUtil.screenWidth,
            ),
          ))
    ]);
  }
}

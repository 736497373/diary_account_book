import 'package:diary_account_book/module/page/root/root_page.dart';
import 'package:diary_account_book/module/utils/localUtils/local_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'module/page/login/login_home_page.dart';
import 'module/utils/routerNavUtils/router_nav_utils.dart';

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  String token;
  @override
  void initState() {
    super.initState();
    LocalUtils.getInstance().getString(LocalUtils.token).then((value) {
      setState(() {
        token = value;
      });
    });
  }

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
        home: CheckPageState(token));
  }
}

class CheckPageState extends StatelessWidget {
  final String token;
  CheckPageState(this.token);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 809);
    ScreenUtil().setSp(12);
    if (token != null) {
      return RootPage();
    } else {
      return LoginHomePage();
    }
  }
}

import 'package:diary_account_book/module/utils/routerUtils/router_utils.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

// 导航页面跳转工具类，可迁移，业务侧使用请RouterMergeUtils类

class RouterNavigatorUtils {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static void push(String path,
      {BuildContext context, bool replace = false, bool clearStack = false}) {
    unfocus();

    var nContext;
    if (context != null) {
      nContext = context;
    } else {
      nContext = navigatorKey.currentContext;
    }

    RouterUtils.router.navigateTo(nContext, path,
        replace: replace,
        clearStack: clearStack,
        transition: TransitionType.native);
  }

  static void pushResult(
      BuildContext context, String path, Function(Object) function,
      {bool replace = false, bool clearStack = false}) {
    unfocus();
    RouterUtils.router
        .navigateTo(context, path,
            replace: replace,
            clearStack: clearStack,
            transition: TransitionType.native)
        .then((Object result) {
      // 页面返回result为null
      if (result == null) {
        return;
      }
      function(result);
    }).catchError((dynamic error) {
      print('$error');
    });
  }

  /// 返回
  static void goBack({BuildContext context}) {
    unfocus();
    var nContext;
    if (context != null) {
      nContext = context;
    } else {
      nContext = navigatorKey.currentContext;
    }
    Navigator.pop(nContext);
  }

  static void goBackPath(BuildContext context, String path) {
    Navigator.popUntil(context, ModalRoute.withName(path));
  }

  /// 带参数返回
  static void goBackWithParams(BuildContext context, Object result) {
    unfocus();
    Navigator.pop<Object>(context, result);
  }

  static void unfocus() {
    // 使用下面的方式，会触发不必要的build。
    // FocusScope.of(context).unfocus();
    // https://github.com/flutter/flutter/issues/47128#issuecomment-627551073
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

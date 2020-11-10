import 'package:diary_account_book/module/page/login/login_home_page.dart';
import 'package:diary_account_book/module/utils/routerUtils/router_utils.dart';
import 'package:fluro/fluro.dart';

class LoginRouter implements IRouterProvider {
  final String loginHomePage = '/loginHomePage';
  @override
  void initRouter(FluroRouter router) {
    router.define(loginHomePage,
        handler: Handler(
            handlerFunc: (context, Map<String, List<String>> params) =>
                LoginHomePage()));
  }
}

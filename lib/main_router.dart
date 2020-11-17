import 'package:diary_account_book/module/router/home_router.dart';
import 'package:diary_account_book/module/router/root_router.dart';
import 'package:diary_account_book/module/utils/routerUtils/router_utils.dart';

import 'module/router/login_router.dart';

class MainRouter {
  void initRouter() {
    RouterUtils.routers.add(RootRouter());
    RouterUtils.routers.add(LoginRouter());
    RouterUtils.routers.add(HomeRouter());
    RouterUtils.initRoutes();
  }
}

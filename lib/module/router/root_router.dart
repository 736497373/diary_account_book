import 'package:diary_account_book/module/page/root/root_page.dart';
import 'package:diary_account_book/module/utils/routerUtils/router_utils.dart';
import 'package:fluro/fluro.dart';

class RootRouter implements IRouterProvider {
  final String rootPage = '/rootPage';
  @override
  void initRouter(FluroRouter router) {
    router.define(rootPage,
        handler: Handler(
            handlerFunc: (context, Map<String, List<String>> params) =>
                RootPage()));
  }
}

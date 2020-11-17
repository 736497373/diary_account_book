import 'package:diary_account_book/module/page/home/home_budget_detail.dart';
import 'package:diary_account_book/module/utils/routerUtils/router_utils.dart';
import 'package:fluro/fluro.dart';

class HomeRouter implements IRouterProvider {
  final String homeBudgetDetailPage = '/homeBudgetDetailPage';
  @override
  void initRouter(FluroRouter router) {
    router.define(homeBudgetDetailPage,
        handler: Handler(
            handlerFunc: (context, Map<String, List<String>> params) =>
                HomeBudgetDetail()));
  }
}

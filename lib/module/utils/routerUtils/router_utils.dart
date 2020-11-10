import 'package:fluro/fluro.dart' as ro;

abstract class IRouterProvider {
  void initRouter(ro.FluroRouter router);
}

class RouterUtils {
  static List<IRouterProvider> routers = [];

  static final List<IRouterProvider> _listRouter = [];

  static final ro.FluroRouter router = ro.FluroRouter();

  static void initRoutes() {
    _listRouter.clear();

    RouterUtils.routers.forEach((router) {
      _listRouter.add(router);
    });

    /// 初始化路由
    _listRouter.forEach((routerProvider) {
      routerProvider.initRouter(router);
    });
  }
}

import 'package:fluro/fluro.dart';
import 'package:remontina/internal/routes/routes_list.dart';

import 'handlers.dart';

class Routes {
  factory Routes.init() => Routes._();

  Routes._() {
    _handlers = Handlers(to);
    _configureRoutes();
  }

  static FluroRouter router = FluroRouter();

  static RoutesList to = RoutesList();
  static late Handlers _handlers;

  static void _configureRoutes() {
    _handlers.handlers.forEach((path, handler) {
      router.define(path, handler: handler, transitionType:  TransitionType.fadeIn);
    });
  }
}

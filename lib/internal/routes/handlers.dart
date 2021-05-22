import 'package:fluro/fluro.dart';
import 'package:remontina/internal/routes/routes_list.dart';
import 'package:remontina/presentation/home/home_screen.dart';
import 'package:remontina/presentation/repairs/repairs_screen.dart';

final homeHandler = Handler(handlerFunc: (context, params) => HomeScreen());

class Handlers {
  final RoutesList to;

  Handlers(this.to) {
    handlers = {
      to.main(): Handler(handlerFunc: (context, params) => HomeScreen()),
      to.repairs(): Handler(handlerFunc: (context, params) => RepairsScreen()),
    };
  }

  late Map<String, Handler?> handlers;
}

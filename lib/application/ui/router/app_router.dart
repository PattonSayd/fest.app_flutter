import 'package:flutter/material.dart';

import '../screen_factory/screen_factory.dart';

class NamedRoute {
  NamedRoute._();
  static const mainTabs = '/';
}

class AppRoute {
  AppRoute._();

  static final routes = <String, Widget Function(BuildContext)>{
    NamedRoute.mainTabs: (_) => ScreenFactory.mainTabs
  };

  // static Route<Object> onGenerateRoute(RouteSettings settings) {
  //   return MaterialPageRoute(builder: (_) => const Text('Navigation error'));
  // }
}

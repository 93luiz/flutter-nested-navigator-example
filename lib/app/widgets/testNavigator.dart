import 'package:flutter/material.dart';
import 'package:navigation_test/app/pages/home/pages/detail/detail_module.dart';
import 'package:navigation_test/app/pages/home/pages/root/root_module.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TestNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  TestNavigator({this.navigatorKey});

  _push (BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => routeBuilders[TabNavigatorRoutes.detail](context))
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => RootModule(),
      TabNavigatorRoutes.detail: (context) => DetailModule(),
    };
  }

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) => MaterialPageRoute(builder: (context) => routeBuilders[routeSettings.name](context)),
      // onUnknownRoute: MaterialPageRoute(builder: (context) => routeBuilders[TabNavigatorRoutes.detail](context)),

    );
  }
}
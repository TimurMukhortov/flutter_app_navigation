import 'package:flutter/material.dart';
import 'package:flutter_app_navigation/feature/home_page.dart';
import 'package:flutter_app_navigation/feature/other_page.dart';
import 'package:flutter_app_navigation/feature/profile_page.dart';

class MainNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  MainNavigator({
    this.navigatorKey,
  });

  Map<String, WidgetBuilder> _routeBuilders(context) {
    return {
      FirstPage.routeName: (context) => FirstPage(),
      ProfilePage.routeName: (context) => ProfilePage(),
      OtherPage.routeName: (context) => OtherPage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, WidgetBuilder> routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: FirstPage.routeName,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context));
      },
    );
  }
}

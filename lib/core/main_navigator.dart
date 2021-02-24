import 'package:flutter/material.dart';
import 'package:flutter_app_navigation/feature/home_page.dart';
import 'package:flutter_app_navigation/feature/profile_page.dart';
import 'package:flutter_app_navigation/feature/other_page.dart';

class MainNavigator extends StatelessWidget {
  Map<String, WidgetBuilder> _routeBuilders(context) {
    final Map<String, WidgetBuilder> routeBuilder = Map();

    // routeBuilder.addAll(FirstPage.router());
    // routeBuilder.addAll(SecondPage.router());
    // routeBuilder.addAll(ThirdPage.router());
    // return routeBuilder;
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
      initialRoute: FirstPage.routeName,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context));
      },
    );
  }
}

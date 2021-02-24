import 'package:flutter/material.dart';

import 'feature/home_page.dart';
import 'feature/main_page.dart';
import 'feature/pages.dart';
import 'feature/profile_page.dart';
import 'feature/other_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        MainPage.routeName: (context) => MainPage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegistryPage.routeName: (context) => RegistryPage(),
        // ThirdPage.routeName: (context) => ThirdPage(),
      },
    );
  }
}

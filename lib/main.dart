import 'package:flutter/material.dart';

import 'feature/first_page.dart';
import 'feature/home_page.dart';
import 'feature/second_page.dart';
import 'feature/third_page.dart';

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
        HomePage.routeName: (context) => HomePage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegistryPage.routeName: (context) => RegistryPage(),
        // ThirdPage.routeName: (context) => ThirdPage(),
      },
    );
  }
}

class SplashPage extends StatelessWidget {
  static const routeName = "splash";
  final String title;

  SplashPage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.red,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  LoginPage.routeName,
                );
              },
              child: Text("LoginPage"),
            ),
            FlatButton(
              color: Colors.red,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  HomePage.routeName,
                );
              },
              child: Text("HomePage"),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  static const routeName = "login";

  final String title;

  LoginPage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.red,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RegistryPage.routeName,
                );
              },
              child: Text("RegistryPage"),
            ),
            FlatButton(
              color: Colors.red,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  HomePage.routeName,
                );
              },
              child: Text("HomePage"),
            ),
          ],
        ),
      ),
    );
  }
}

class RegistryPage extends StatelessWidget {
  static const routeName = "registry";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Registry"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.red,
          splashColor: Colors.green,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginPage.routeName,
              (Route<dynamic> route) => false,
            );
          },
          child: Text("LoginPage"),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'pages.dart';

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
                  MainPage.routeName,
                );
              },
              child: Text("MainPage"),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'pages.dart';

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
                  MainPage.routeName,
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
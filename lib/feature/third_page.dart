import 'package:flutter/material.dart';

import '../main.dart';

class ThirdPage extends StatelessWidget {
  static const routeName = "third";

  static Map<String, WidgetBuilder> router() {
    return {
      routeName: (context) => ThirdPage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Third page"),
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


import 'package:flutter/material.dart';

import 'pages.dart';

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
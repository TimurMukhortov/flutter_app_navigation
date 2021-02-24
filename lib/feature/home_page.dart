import 'package:flutter/material.dart';

import 'other_page.dart';

class FirstPage extends StatelessWidget {
  static const routeName = "home";

  static Map<String, WidgetBuilder> router() {
    return {
      routeName: (context) => FirstPage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.red,
          splashColor: Colors.green,
          onPressed: () {
            Navigator.of(context).pushNamed(
              OtherPage.routeName,
            );
          },
          child: Text("ThirdPage"),
        ),
      ),
    );
  }
}

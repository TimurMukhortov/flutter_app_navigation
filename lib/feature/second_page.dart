import 'package:flutter/material.dart';

import 'third_page.dart';

class SecondPage extends StatelessWidget {
  static const routeName = "second";

  static Map<String, WidgetBuilder> router() {
    return {
      routeName: (context) => SecondPage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.red,
          splashColor: Colors.green,
          onPressed: () {
            Navigator.of(context).pushNamed(
              ThirdPage.routeName,
            );
          },
          child: Text("Third page"),
        ),
      ),
    );
  }
}
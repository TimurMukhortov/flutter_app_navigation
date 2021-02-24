import 'package:flutter/material.dart';

import 'third_page.dart';

class FirstPage extends StatelessWidget {
  static const routeName = "first";

  static Map<String, WidgetBuilder> router() {
    return {
      routeName: (context) => FirstPage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
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
          child: Text("ThirdPage"),
        ),
      ),
    );
  }
}

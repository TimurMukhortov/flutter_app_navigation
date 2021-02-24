import 'package:flutter/material.dart';

import 'other_page.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = "profile";

  static Map<String, WidgetBuilder> router() {
    return {
      routeName: (context) => ProfilePage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile page"),
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
          child: Text("Other page"),
        ),
      ),
    );
  }
}
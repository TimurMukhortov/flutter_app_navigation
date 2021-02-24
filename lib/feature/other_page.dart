import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  static const routeName = "other";

  static Map<String, WidgetBuilder> router() {
    return {
      routeName: (context) => OtherPage(),
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
        title: Text("Other page"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.red,
          splashColor: Colors.green,
          onPressed: () {
            // todo
          },
          child: Text("Something to do"),
        ),
      ),
    );
  }
}

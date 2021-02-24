import 'package:flutter/material.dart';

enum TabItem {
  HOME,
  PROFILE,
}

extension TabFormatter on TabItem {
  String get title {
    String text;
    switch (this) {
      case TabItem.HOME:
        text = "home";
        break;
      case TabItem.PROFILE:
        text = "profile";
        break;
    }
    return text;
  }

  IconData get icon {
    IconData iconData;
    switch (this) {
      case TabItem.HOME:
        iconData = Icons.home;
        break;
      case TabItem.PROFILE:
        iconData = Icons.account_circle;
        break;
    }
    return iconData;
  }
}

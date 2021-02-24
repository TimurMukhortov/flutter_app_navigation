import 'package:flutter/material.dart';

import 'tab_item.dart';

class BottomNavigation extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  BottomNavigation({
    @required this.currentTab,
    @required this.onSelectTab,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.HOME),
        _buildItem(TabItem.PROFILE),
      ],
      onTap: (index) {
        onSelectTab(
          TabItem.values[index],
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        tabItem.icon,
      ),
      label: tabItem.title,
    );
  }
}

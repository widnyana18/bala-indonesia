import 'package:flutter/material.dart';

class ProductMenu extends StatelessWidget {
  static Widget alternate() {
    return TabBar(
      tabs: destination.map((item) => Text(item)).toList(),
      isScrollable: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 0,
      destinations: destination
          .map((dest) => NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Text(dest),
              ))
          .toList(),
      extended: true,
      onDestinationSelected: (idx) {},
    );
  }

  static List<String> destination = [
    'BALACHIPS',
    'BALAMAGG',
    'BALAMEAL',
    'BALABOX',
    'BALAMANURE'
  ];
}

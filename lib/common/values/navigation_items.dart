import 'package:flutter/material.dart';

class NavigationItem {
  String title;
  String iconData;

  NavigationItem({required this.title, required this.iconData});
}

var navigationItems = <NavigationItem>[
  NavigationItem(title: "Home", iconData: "assets/images/bottom/home.svg"),
  NavigationItem(title: "Drawers", iconData: "assets/images/bottom/storage.svg"),
  NavigationItem(title: "Todo", iconData: "assets/images/bottom/todo.svg")
];

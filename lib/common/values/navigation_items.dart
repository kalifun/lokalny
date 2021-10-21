import 'package:flutter/material.dart';

class NavigationItem {
  String title;
  String iconData;

  NavigationItem({required this.title, required this.iconData});
}

var navigationItems = <NavigationItem>[
  NavigationItem(title: "Home", iconData: "assets/home.svg"),
  NavigationItem(title: "Drawers", iconData: "assets/storage.svg"),
  NavigationItem(title: "Todo", iconData: "assets/todo.svg")
];

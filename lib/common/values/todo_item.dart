import 'package:flutter/widgets.dart';

class TodoItems {
  String title;
  String iconData;
  Widget widget;
  TodoItems({
    required this.title,
    required this.iconData,
    required this.widget,
  });

  TodoItems copyWith({
    String? title,
    String? iconData,
    Widget? widget,
  }) {
    return TodoItems(
      title: title ?? this.title,
      iconData: iconData ?? this.iconData,
      widget: widget ?? this.widget,
    );
  }

  @override
  String toString() =>
      'TodoItems(title: $title, iconData: $iconData, widget: $widget)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoItems &&
        other.title == title &&
        other.iconData == iconData &&
        other.widget == widget;
  }

  @override
  int get hashCode => title.hashCode ^ iconData.hashCode ^ widget.hashCode;
}

// var todoItems = <TodoItems>[
//   TodoItems(title: "Task", iconData: iconData, widget: widget),
//   TodoItems(title: "Category", iconData: iconData, widget: widget),
//   TodoItems(title: "Tags", iconData: iconData, widget: widget)
// ];

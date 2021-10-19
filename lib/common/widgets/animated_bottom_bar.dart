import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainProgramNavigationBar extends StatefulWidget {
  final List<MainItem> mainItems;
  final Duration animationDuration;
  final Function onBarTap;
  MainProgramNavigationBar(
      {Key? key,
      required this.mainItems,
      this.animationDuration = const Duration(milliseconds: 500),
      required this.onBarTap})
      : super(key: key);

  @override
  _MainProgramNavigationBarState createState() =>
      _MainProgramNavigationBarState();
}

class _MainProgramNavigationBarState extends State<MainProgramNavigationBar> {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 12.0, top: 12.0, left: 16.0, right: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildMainItems(),
        ),
      ),
    );
  }

  List<Widget> _buildMainItems() {
    List<Widget> _mainItems = [];
    for (int i = 0; i < widget.mainItems.length; i++) {
      MainItem item = widget.mainItems[i];
      bool isSelected = selectedBarIndex == i;
      _mainItems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            selectedBarIndex = i;
            widget.onBarTap(selectedBarIndex);
          });
        },
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          duration: widget.animationDuration,
          decoration: BoxDecoration(
            color:
                isSelected ? item.color.withOpacity(0.15) : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                item.iconData,
                color: isSelected ? item.color : Colors.black,
                size: 32,
              ),
              const SizedBox(
                width: 10.0,
              ),
              AnimatedSize(
                duration: widget.animationDuration,
                curve: Curves.easeInOut,
                child: Text(
                  isSelected ? item.title : "",
                  style: TextStyle(
                      color: item.color,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ));
    }
    return _mainItems;
  }
}

class MainItem {
  String title;
  IconData iconData;
  Color color;

  MainItem({required this.title, required this.iconData, required this.color});
}

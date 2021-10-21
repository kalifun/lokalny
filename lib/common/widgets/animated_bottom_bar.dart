import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lokalny/common/screen/screen.dart';
import 'package:lokalny/common/values/navigation_items.dart';

// hover bottom bar
class HoverBottomBar extends StatefulWidget {
  HoverBottomBar({Key? key}) : super(key: key);

  @override
  _HoverBottomBarState createState() => _HoverBottomBarState();
}

class _HoverBottomBarState extends State<HoverBottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: doSetHeight(56),
      bottom: doSetHeight(32),
      left: doSetWidth(32),
      right: doSetWidth(32),
      child: Material(
        color: Colors.white,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _barItems(),
        ),
      ),
    );
  }

  List<Widget> _barItems() {
    List<Widget> _items = [];
    for (int i = 0; i < navigationItems.length; i++) {
      bool isSelected = _currentIndex == i;
      _items.add(
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              _currentIndex = i;
            });
          },
          child: AnimatedContainer(
            // width: doSetWidth(36),
            // height: doSetHeight(36),
            duration: const Duration(
              milliseconds: 300,
            ),
            decoration: BoxDecoration(
                color: isSelected ? Colors.teal : Colors.transparent,
                borderRadius: BorderRadius.circular(18)),
            // child: SvgPicture.asset(
            //   navigationItems[i].iconData,
            //   color: isSelected ? Colors.black : Colors.grey,
            // ),
            child: Row(
              children: <Widget>[
                AnimatedSize(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeInOut,
                  child: SvgPicture.asset(
                    navigationItems[i].iconData,
                    color: isSelected ? Colors.black : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return _items;
  }
}

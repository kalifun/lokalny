import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lokalny/common/screen/screen.dart';
import 'package:lokalny/common/widgets/animated_bottom_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final List<MainItem> mainItems = [
    MainItem(title: "Home", iconData: Icons.home, color: Colors.indigo),
    MainItem(
        title: "Storage", iconData: Icons.storage, color: Colors.pinkAccent),
    MainItem(title: "Todo", iconData: Icons.today_outlined, color: Colors.teal)
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      designSize: const Size(375, 734),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: widget.mainItems[selectedItemIndex].color,
      ),
      bottomNavigationBar: MainProgramNavigationBar(
        mainItems: widget.mainItems,
        animationDuration: const Duration(milliseconds: 150),
        onBarTap: (index) {
          setState(() {
            selectedItemIndex = index;
          });
        },
      ),
    );
  }
}

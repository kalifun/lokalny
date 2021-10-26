import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lokalny/common/icon/bottom_bar_icons.dart';
import 'package:lokalny/common/screen/screen.dart';
import 'package:lokalny/pages/drawers/drawers_page.dart';
import 'package:lokalny/pages/home/home_page.dart';
import 'package:lokalny/pages/todo/todo_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedItemIndex = 0;
  List<Widget> _list = [HomePage(), DrawersPage(), TodoPage()];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      designSize: const Size(375, 734),
    );
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: _list[selectedItemIndex],
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
              bottom: doSetHeight(10),
              left: doSetWidth(32),
              right: doSetWidth(32)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.teal,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.grey,
                tabs: const [
                  GButton(
                    icon: Bottom_bar.home_1,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Bottom_bar.suitcase_rolling,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Bottom_bar.check_double,
                    text: 'Search',
                  ),
                ],
                selectedIndex: selectedItemIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedItemIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lokalny/common/screen/screen.dart';
import 'package:lokalny/common/values/colors.dart';

class DrawersPage extends StatefulWidget {
  DrawersPage({Key? key}) : super(key: key);

  @override
  _DrawersPageState createState() => _DrawersPageState();
}

class _DrawersPageState extends State<DrawersPage>
    with SingleTickerProviderStateMixin {
  int _page = 0;
  final List<String> _tabTitles = [
    'Welcome',
    'Cagegory',
    'Bookmarks',
    'Account'
  ];
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: _page);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              _tabTitles[_page],
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: 'Montserrat',
                fontSize: doSetFontSize(18.0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: AppColors.primaryText,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_to_photos,
                  color: Colors.black,
                ))
          ]),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          
        ],
        controller: _pageController,
        onPageChanged: _handlePageChanged,
      ),
    );
  }

  // tab栏页码切换
  void _handlePageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

}

class GridViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('文本'),
      decoration: const BoxDecoration(color: AppColors.primaryParts),
    );
  }
}

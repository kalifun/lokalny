import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lokalny/common/screen/screen.dart';
import 'package:lokalny/common/values/colors.dart';
import 'package:lokalny/common/values/navigation_items.dart';
import 'package:lokalny/common/widgets/animated_bottom_bar.dart';
import 'package:lokalny/pages/drawers/drawers_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Material(
          child: Scaffold(
        // appBar: AppBar(
        //     backgroundColor: Colors.transparent,
        //     elevation: 0,
        //     title: Center(
        //       child: Text(
        //         "收纳",
        //         style: TextStyle(
        //           color: AppColors.primaryText,
        //           fontFamily: 'Montserrat',
        //           fontSize: doSetFontSize(18.0),
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //     ),
        //     leading: IconButton(
        //       icon: const Icon(Icons.arrow_back),
        //       color: AppColors.primaryText,
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //     ),
        //     actions: <Widget>[
        //       IconButton(
        //           onPressed: () {},
        //           icon: Icon(
        //             Icons.add_to_photos,
        //             color: Colors.black,
        //           ))
        //     ]),
        body: Stack(
          children: [DrawersPage(), HoverBottomBar()],
        ),
      )),
    );
  }
}

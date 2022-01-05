import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lokalny/common/icon/bottom_bar_icons.dart';
import 'package:lokalny/common/values/colors.dart';

class DrawersPage extends StatefulWidget {
  DrawersPage({Key? key}) : super(key: key);

  @override
  _DrawersPageState createState() => _DrawersPageState();
}

class _DrawersPageState extends State<DrawersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primaryParts,
            title: Text("data"),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5.0,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: "全部",
                  icon: Icon(Icons.all_inbox),
                ),
                Tab(
                  text: "提醒",
                  icon: Icon(Icons.add_alert_outlined),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("全部"),
              ),
              Center(
                child: Text("提醒"),
              )
            ],
          ),
        ));
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Container(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               height: MediaQuery.of(context).viewPadding.top,
    //             ),
    //             Container(
    //               margin: const EdgeInsets.only(left: 16, top: 8, bottom: 16),
    //               child: Row(
    //                 children: [
    //                   const Text(
    //                     "抽屉",
    //                     style: TextStyle(
    //                         fontSize: 20, fontWeight: FontWeight.bold),
    //                   ),
    //                   const Expanded(child: SizedBox()),
    //                   InkWell(
    //                     onTap: () {},
    //                     child: const Icon(
    //                       Bottom_bar.plus,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     width: 16,
    //                   )
    //                 ],
    //               ),
    //             ),
    //             Expanded(
    //               child: DefaultTabController(
    //                   length: 2,
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Container(
    //                         margin: const EdgeInsets.only(left: 16, right: 16),
    //                         child: TabBar(
    //                           tabs: [
    //                             Container(
    //                               alignment: Alignment.center,
    //                               width: 60,
    //                               height: 38,
    //                               child: const Text("全部"),
    //                             ),
    //                             Container(
    //                               alignment: Alignment.center,
    //                               width: 60,
    //                               height: 38,
    //                               child: const Text("提醒"),
    //                             ),
    //                           ],
    //                           labelColor: Colors.blueAccent,
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         height: 3,
    //                       ),
    //                       // Expanded(child: TabBarView(children: children))
    //                     ],
    //                   )),
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}

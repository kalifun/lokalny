import 'package:flutter/material.dart';

class TodoCategory extends StatefulWidget {
  TodoCategory({Key? key}) : super(key: key);

  @override
  _TodoCategoryState createState() => _TodoCategoryState();
}

class _TodoCategoryState extends State<TodoCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: [
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //       (BuildContext context, int index) => Container(
            //             margin: EdgeInsets.only(left: 10, top: 15, bottom: 0),
            //             child: Text(
            //               'Projects',
            //               style: TextStyle(
            //                   fontSize: 13,
            //                   fontWeight: FontWeight.w600,
            //                   color: Colors.blueAccent),
            //             ),
            //           ),
            //       childCount: 1),
            // ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                Container(
                    
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            // child: Image.asset('assets/images/icon-user.png'),
                            decoration: const BoxDecoration(
                              color: Colors.cyanAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Personal',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '24 Tasks',
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}

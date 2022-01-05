import 'package:flutter/material.dart';
import 'package:lokalny/common/values/colors.dart';
import 'package:lokalny/common/widgets/custom_scroll_view.dart';
import 'package:lokalny/common/widgets/tags/tags.dart';

class TodoPage extends StatefulWidget {
  TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryParts,
          title: Text('TodoList'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(top: 10.0),
            // unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Task',
                icon: Icon(
                  Icons.task_outlined,
                  // color: Colors.white,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              //child: Image.asset('images/android.png'),

              Tab(
                text: 'Category',
                icon: Icon(
                  Icons.category_outlined,
                  // color: Colors.white,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: 'Tags',
                icon: Icon(
                  Icons.tag_outlined,
                  // color: Colors.white,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Center(
            //     child: Text(
            //   'This is Cake Tab',
            //   style: TextStyle(fontSize: 32),
            // )),
            genList(),
            TodoCategory(),
            TagWrapFunc(),
            // Center(
            //     child: Text(
            //   'This is Gift Tab',
            //   style: TextStyle(fontSize: 32),
            // )),
          ],
        ),
      ),
    );
    // return ListView.builder(
    //   padding: EdgeInsets.only(left: 20, right: 20),
    //   itemCount: 100,
    //   itemBuilder: (context, index) {
    //     return Card(
    //       child: ListTile(
    //         title: Text("LIST " + index.toString()),
    //         subtitle: Text("The battery is full " + index.toString()),
    //         leading: CircleAvatar(
    //             backgroundImage: NetworkImage(
    //                 "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
    //         onTap: () {
    //           AlertDialog(
    //             title: Text("data"),
    //           );
    //         },
    //       ),
    //     );
    //   },
    // );
    // return ListView(
    //   padding: const EdgeInsets.all(8),
    //   children: <Widget>[
    //     Card(
    //       child: ListTile(
    //           title: Text("LIST1"),
    //           subtitle: Text("The battery is full."),
    //           leading: CircleAvatar(
    //               backgroundImage: NetworkImage(
    //                   "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
    //           trailing: Icon(Icons.star)),
    //     ),
    //     Card(
    //       child: ListTile(
    //           title: Text("LIST2"),
    //           subtitle: Text("The battery is full."),
    //           leading: CircleAvatar(
    //               backgroundImage: NetworkImage(
    //                   "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
    //           trailing: Icon(Icons.star)),
    //     ),
    //   ],
    // );
  }

  Widget genList() {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("LIST " + index.toString()),
            subtitle: Text("The battery is full " + index.toString()),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
            onTap: () {
              AlertDialog(
                title: Text("data"),
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class TagWrap extends StatelessWidget {
  const TagWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(children: <Widget>[for (String item in tags) TagItem(item)]),
    );
  }
}

class TagItem extends StatelessWidget {
  final String text;

  TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 81, 81),
          border:
              Border.all(color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            padding: EdgeInsets.all(0.0),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.cancel,
                size: 18.0,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
      // child: Container(
      //   margin: EdgeInsets.all(8),
      //   child: Text(text),
      // ),
    );
  }
}

const List<String> tags = [
  "肯德基",
  "小哥哥你的东西掉了",
  "小姐姐好漂亮啊",
  "这个东西是啥",
  "哈哈哈",
  "好困啊",
  "今天好运",
  "明天好运来",
  "今年快结束了",
  "我累啊",
  "你写的什么代码",
  "多多多"
];

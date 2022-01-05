import 'dart:math';

import 'package:flutter/material.dart';

class TagWrapFunc extends StatefulWidget {
  TagWrapFunc({Key? key}) : super(key: key);

  @override
  _TagWrapFuncState createState() => _TagWrapFuncState();
}

class _TagWrapFuncState extends State<TagWrapFunc> {
  var _tags = <String>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _tags = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    var _tag = TextEditingController();

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  _tags.add(value);
                  _tag.text = "";
                });
                print(_tags);
              },
              controller: _tag,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.bookmark_add_outlined),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              cursorRadius: Radius.circular(16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
              spacing: 2,
              runSpacing: 5,
              children: <Widget>[for (String item in _tags) TagItem(item)])
        ],
      ),
    );
  }
}

class TagWrap extends StatelessWidget {
  const TagWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _tag = TextEditingController();
    var _tags = <String>[];

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              onSubmitted: (value) {
                _tags.add(value);
                _tag.text = "";
              },
              controller: _tag,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.bookmark_add_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              cursorRadius: Radius.circular(16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
              spacing: 2,
              runSpacing: 5,
              children: <Widget>[for (String item in _tags) TagItem(item)])
        ],
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  final String text;

  const TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 171, 81, 81),
          color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
              Random().nextInt(256), 1),
          border:
              Border.all(color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
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
                color: Colors.grey,
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
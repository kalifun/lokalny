import 'package:flutter/material.dart';
import 'package:lokalny/common/screen/screen.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'package:lokalny/pages/index/index_page.dart';

void main() {
  runApp(const MyApp());
  if (Platform.isAndroid) {
    // 设置状态栏背景及颜色
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // SystemChrome.setEnabledSystemUIOverlays([]); //隐藏状态栏
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.yellow));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokalny',
      home: IndexPage(),
      theme: ThemeData(
          backgroundColor: Colors.yellow,
          primaryColor: const Color.fromRGBO(142, 151, 253, 1.0)),
      // primaryColor: Colors.yellow),
      showSemanticsDebugger: false,
    );
  }
}

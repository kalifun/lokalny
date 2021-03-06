import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lokalny/pages/index/index_page.dart';

void main() {
  runApp(const MyApp());
  if (Platform.isAndroid) {
    // 设置状态栏背景及颜色
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // SystemChrome.setEnabledSystemUIOverlays([]); //隐藏状态栏
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokalny',
      home: IndexPage(),
      theme: ThemeData(
          backgroundColor: Colors.yellow,
          primaryColor: const Color.fromRGBO(142, 151, 253, 1.0),
          primarySwatch: Colors.teal),
      // primaryColor: Colors.yellow),
      showSemanticsDebugger: false,
    );
  }
}

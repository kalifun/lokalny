import 'package:flutter_screenutil/flutter_screenutil.dart';

// 设置宽度
double doSetWidth(double width) {
  return ScreenUtil().setHeight(width);
}

// 设置高度
double doSetHeight(double height) {
  return ScreenUtil().setHeight(height);
}

// 设置字体宽度
double doSetFontSize(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}

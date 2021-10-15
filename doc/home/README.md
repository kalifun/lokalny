# 首页

## 屏幕适配方案

### 新增依赖

pubspec.yaml

```yaml
flutter_screenutil: ^5.0.0+2
```

### 通用适应方法

lib\common\screen\screen.dart

```dart
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

```
import 'package:flutter/material.dart';

class HYAppTheme {
  // 1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;


  // 2.普通模式
  static final Color norTextColors = Colors.red;

  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: bodyFontSize),
      displaySmall: TextStyle(fontSize: smallFontSize, color: Colors.black87),
      displayMedium: TextStyle(fontSize: normalFontSize, color: Colors.black87),
      displayLarge: TextStyle(fontSize: largeFontSize, color: Colors.black87),
    )
  );


  // 3.暗黑模式
  static final Color darkTextColors = Colors.green;

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
        bodySmall: TextStyle(fontSize: normalFontSize, color: darkTextColors)
    )
  );
}
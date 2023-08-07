import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class HYRouter {

  static String initialName = HYMainPage.routeName;

  static Map<String,WidgetBuilder> routes = {
    HYMainPage.routeName:(ctx)=>HYMainPage(),
    HYMealPage.routeName:(ctx)=>HYMealPage(),
    HYDetailPage.routeName:(ctx)=>HYDetailPage(),
    HYFilterPage.routeName:(ctx)=>HYFilterPage()
  };

  static RouteFactory generateRoute = (settings) {
    return null;
  };


  static RouteFactory unknownRoute = (settings){
    return null;
  };
}
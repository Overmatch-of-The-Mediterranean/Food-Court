import 'package:flutter/material.dart';
import 'package:favorcate/ui/pages/favor/favor.dart';
import 'package:favorcate/ui/pages/home/home.dart';


List <Widget> pages = [
  HYHomePage(),
  HYFavorPage()
];

List <BottomNavigationBarItem> items =[
  BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '美食广场'
  ),
  BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: '我的收藏'
  )
];
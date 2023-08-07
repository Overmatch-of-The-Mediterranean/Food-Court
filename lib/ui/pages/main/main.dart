
import 'package:favorcate/ui/pages/home/home_drawer.dart';
import 'package:flutter/material.dart';
import 'initialize_items.dart';

class HYMainPage extends StatefulWidget {

  static String routeName = "/";

  const HYMainPage({super.key});

  @override
  State<HYMainPage> createState() => _HYMainPageState();
}

class _HYMainPageState extends State<HYMainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HYHomeDrawer(),
      body: IndexedStack(
        index:_currentIndex,
          children:pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize:14,
        unselectedFontSize:14,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:favorcate/ui/pages/favor/favor_content.dart';
import 'package:flutter/material.dart';

class HYFavorPage extends StatefulWidget {

  const HYFavorPage({super.key});

  @override
  State<HYFavorPage> createState() => _HYFavorPageState();
}

class _HYFavorPageState extends State<HYFavorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收藏'),
      ),
      body: Center(
          child: HYFavorContent()
      ),
    );
  }
}
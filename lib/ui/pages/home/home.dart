import 'package:favorcate/ui/pages/home/home_appbar.dart';
import 'package:favorcate/ui/pages/home/home_content.dart';
import 'package:favorcate/ui/pages/home/home_drawer.dart';
import 'package:flutter/material.dart';

class HYHomePage extends StatefulWidget {
  const HYHomePage({super.key});

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HYHomeAppBar(context),
      body: HYHomeContent(),
    );
  }
}

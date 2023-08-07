import 'package:flutter/material.dart';
import 'package:favorcate/ui/pages/filter/filter_content.dart';


class HYFilterPage extends StatelessWidget {

  static const String routeName = '/filter';

  const HYFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: HYFilterContent(),
    );
  }
}

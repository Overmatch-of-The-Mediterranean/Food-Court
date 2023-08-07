import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/ui/pages/detail/detail_content.dart';
import 'package:favorcate/ui/pages/detail/floating_button.dart';
import 'package:flutter/material.dart';

class HYDetailPage extends StatelessWidget {


  static final String routeName = '/detail';


  @override
  Widget build(BuildContext context) {
    final _meal = ModalRoute.of(context)?.settings.arguments as HYMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(_meal.title),
      ),
      body: HYDetailContent(_meal),
      floatingActionButton: HYFloatingButton(_meal)
    );
  }
}

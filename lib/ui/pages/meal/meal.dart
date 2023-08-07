

import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal_content.dart';
import 'package:flutter/material.dart';

class HYMealPage extends StatelessWidget {

  static final String routeName = '/meal';

  const HYMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HYCategoryModel _category = ModalRoute.of(context)?.settings.arguments as HYCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title as String),
      ),
      body: HYMealContent(_category)
    );
  }
}

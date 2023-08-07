

import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class HYCategoryItem extends StatelessWidget {

  final HYCategoryModel _category;


  HYCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;

    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12.px),
            gradient: LinearGradient(
                colors: [
                  bgColor.withOpacity(0.6),
                  bgColor
                ]
            )
        ),

        child: Text(_category.title as String,style: Theme.of(context).textTheme.displayMedium,),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(HYMealPage.routeName,arguments: _category);
      },
    );

  }
}

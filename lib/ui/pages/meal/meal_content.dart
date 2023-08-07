import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

class HYMealContent extends StatelessWidget {

  final HYCategoryModel _category;

  HYMealContent(this._category);

  @override
  Widget build(BuildContext context) {

    return Selector<HYMealViewModel,List<HYMealModel>>(
      selector:(ctx,mealVM)=> mealVM.meals.where((meal) => meal.categories.contains(_category.id)).toList(),
        shouldRebuild:(prev,next){
          return !ListEquality().equals(prev, next);
        },
        builder: (context,meals,child){
          return ListView.builder(
            itemCount: meals.length,
              itemBuilder: (context,index){
                return HYMealItem(meals[index]);
              }
          );
        },

    );
  }
}


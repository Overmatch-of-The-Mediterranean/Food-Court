import 'package:favorcate/core/viewmodel/base_view_model.dart';
import 'package:flutter/widgets.dart';

import 'package:favorcate/core/model/meal_view.dart';


class HYFavorViewModel extends HYBaseViewModel {



  bool isFavor (HYMealModel meal){
    return originMeals.contains(meal);
  }

  void addMeal(HYMealModel meal){
    originMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(HYMealModel meal){
    originMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(HYMealModel meal){
    if(!isFavor(meal)) {
      addMeal(meal);
    } else {
      removeMeal(meal);
    }
  }

}
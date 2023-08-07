


import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/core/service/meal_request.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';

class HYMealViewModel extends HYBaseViewModel {




  HYMealViewModel(){
    HYMealRequest.getMealData().then((res){
      meals = res;
    });
  }

}
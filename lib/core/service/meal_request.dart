

import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/core/service/http_request.dart';

class HYMealRequest {

  static Future<List<HYMealModel>> getMealData () async{

    final result = await HttpRequest.request('/meal');


    final resultArray = result["meal"];

    List<HYMealModel> meals = [];

    for(var json in resultArray) {
      meals.add(HYMealModel.fromJson(json));
    }

    return meals;

  }


}
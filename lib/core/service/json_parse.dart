

import 'dart:convert';

import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/services.dart';

class HYJsonParse {

  static Future<List<HYCategoryModel>> getCategoryData () async {

    final jsonString = await rootBundle.loadString('assets/json/category.json');

    final result = json.decode(jsonString);

    // 将字符串转化成Map或List
    final resultList = result['category'];

    List<HYCategoryModel> categories = [];

    for(var json in resultList) {
      categories.add(HYCategoryModel.fromJson(json));
    }

    return categories;



  }

}
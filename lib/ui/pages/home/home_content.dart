
import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/service/json_parse.dart';
import 'package:favorcate/ui/pages/home/home_category_item.dart';
import 'package:flutter/material.dart';

class HYHomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<HYCategoryModel>>(
      future: HYJsonParse.getCategoryData(),
      builder:(ctx,snapshot){
        if(!snapshot.hasData) return CircularProgressIndicator();
        if(snapshot.error != null) return Text('请求错误');

        final _categories = snapshot.data as List<HYCategoryModel>;
        
        return GridView.builder(
            padding: EdgeInsets.all(20.px),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.px,
                crossAxisSpacing: 20.px,
                childAspectRatio: 1.5
            ),
            itemCount: _categories.length,
            itemBuilder: (ctx,index) {

              return HYCategoryItem(_categories[index]);
            }
        );
      }
    );
  }

}


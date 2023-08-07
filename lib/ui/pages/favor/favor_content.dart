import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYFavorContent extends StatelessWidget {
  const HYFavorContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
      builder: (context,favorVM,child){
        if (favorVM.meals.length == 0) {
          return Center(
            child: Text('未收藏美食'),
          );
        }
        return ListView.builder(
            itemCount: favorVM.meals.length,
            itemBuilder: (ctx,index){
              return HYMealItem(favorVM.meals[index]);
            }
        );
      },
    );
  }
}

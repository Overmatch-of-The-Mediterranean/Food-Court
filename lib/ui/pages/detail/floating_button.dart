
import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYFloatingButton  extends StatelessWidget {
  final HYMealModel _meal;

  HYFloatingButton (this._meal);

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
      builder: (context,favorVM,child){

        final IconData = favorVM.isFavor(_meal) ? Icons.favorite : Icons.favorite_border;
        final iconColor = favorVM.isFavor(_meal) ? Colors.red : Colors.white;

        return FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(IconData,color: iconColor,),
          onPressed: (){
            favorVM.handleMeal(_meal);
          },
        );
      }
    );
  }
}

import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/widgets/meal_operation_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final cardRadius = 12.px;

class HYMealItem extends StatelessWidget {

  final HYMealModel _meal;
  HYMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(cardRadius),
        ),
        elevation: 5,
        child: Column(
          children: [
            bulidImage(context),
            buildOperationInfo(context)
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(HYDetailPage.routeName,arguments: _meal);
      },
    );
  }

  Widget bulidImage (BuildContext context){
    return Stack(
      children: [
        ClipRRect(
            borderRadius:BorderRadius.only(
                topLeft: Radius.circular(cardRadius),
                topRight: Radius.circular(cardRadius)
            ),
            child: Image.network(_meal.imageUrl,width: double.infinity,height: 250.px,fit: BoxFit.cover,)
        ),
        Positioned(
          bottom: 10.px,
          right: 10.px,

          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.px,vertical: 5.px),
            width: 300.px,
            decoration: BoxDecoration(
                color: Colors.black54
            ),
            child: Text(_meal.title,style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Colors.white
            ),),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo (BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.px,vertical: 5.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HYMealOperationItem("${_meal.duration}分钟",Icon(Icons.schedule)),
          HYMealOperationItem("${_meal.complexStr}",Icon(Icons.restaurant)),
          buildFavor(),
        ],
      ),
    );
  }

  Widget buildFavor (){
    return Consumer<HYFavorViewModel>(
      builder: (context, favorVM, child){
        final _Icon = favorVM.isFavor(_meal) ? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border,color: Colors.black,);

        final IconText = favorVM.isFavor(_meal) ? '已收藏' : '未收藏';

        return GestureDetector(
          child: HYMealOperationItem(IconText,_Icon),
          onTap: (){
            favorVM.handleMeal(_meal);
          },
        );
      }
    );
  }

}

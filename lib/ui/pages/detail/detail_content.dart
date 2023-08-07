import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/meal_view.dart';
import 'package:flutter/material.dart';

class HYDetailContent extends StatelessWidget {

  final HYMealModel _meal;

  HYDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildImage(),
          buildTitle(context,'制作材料'),
          buildMakeMaterial(context),
          buildTitle(context,'制作步骤'),
          buildMakeStep(context)
        ],
      ),
    );
  }


  Widget buildImage (){
    return Container(
      width: double.infinity,
      child: Image.network(_meal.imageUrl),
    );
  }


  Widget buildMakeMaterial (BuildContext context){
    return buildContent(
        context,
        ListView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          itemCount: _meal.ingredients.length,
          padding: EdgeInsets.zero,
          itemBuilder:(context, index) {
            return Card(
              color: Colors.amber,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.px, horizontal: 10.px),
                  child: Text(_meal.ingredients[index],)
              ),
            );
          }
        ),
    );
  }

  Widget buildMakeStep (BuildContext context){
    return buildContent(
        context,
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _meal.steps.length,
          separatorBuilder: (context,index){
            return Divider();
          },
          itemBuilder:(context,index){
            return ListTile(
              leading: CircleAvatar(
                  child: Text("#${index+1}")
              ),
              title: Text(_meal.steps[index]),
            );
          } ,
        )
    );
  }


  Widget buildContent (BuildContext context,Widget child) {
    return Container(
      padding: EdgeInsets.all(8.px),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.px)
      ),
      width: MediaQuery.of(context).size.width - 30.px,
      child: child,
    );
  }

  Widget buildTitle (BuildContext context,String title){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.px),
        child: Text(title,style: Theme.of(context).textTheme.displayLarge?.copyWith(
          fontWeight: FontWeight.bold
        ),)
    );
  }


}

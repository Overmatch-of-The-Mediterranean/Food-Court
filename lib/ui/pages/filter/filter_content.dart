import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef onchangeFun = void Function(bool value);

class HYFilterContent extends StatelessWidget {
  const HYFilterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFilterTitle(context),
        buildChoice()
        
      ],
    );
  }

  Widget buildFilterTitle (BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.px),
      alignment: Alignment.center,
      child: Text('展示你的选择',style: Theme.of(context).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold),),
    );
  }


  Widget buildChoice (){
    return  Consumer<HYFilterViewModel>(
      builder: (context,filterVM,child){
        return Expanded(
          child: ListView(
            children: [
              buildFilterItem('无谷蛋白','无谷蛋白',filterVM.isGlutenFree,(value){
                filterVM.isGlutenFree = value;
              }),
              buildFilterItem('不含乳糖','不含乳糖',filterVM.isLactoseFree,(value){
                filterVM.isLactoseFree = value;
              }),
              buildFilterItem('素食主义','素食主义',filterVM.isVegetarian,(value){
                filterVM.isVegetarian = value;
              }),
              buildFilterItem('严格素食主义','严格素食主义',filterVM.isVegan,(value){
                filterVM.isVegan = value;
              }),
            ],
          ),
        );
      },
    );
  }


  Widget buildFilterItem (String title, String subtitle,bool value,onchangeFun onChange) {
    return ListTile(
      title:Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(
        value: value,
        onChanged: onChange,
      ),
    );
  }

}


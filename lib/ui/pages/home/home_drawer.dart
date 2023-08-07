import 'dart:ffi';

import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:flutter/material.dart';

typedef VoidFun = void Function();

class HYHomeDrawer extends StatelessWidget {
  const HYHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          buildDrawerTitle(context),

          buildListTile(context ,'进餐',Icons.restaurant, (){
            Navigator.of(context).pop();
          }),
          buildListTile(context,'过滤',Icons.settings,(){
            Navigator.of(context).pushNamed(HYFilterPage.routeName);
          })
        ],
      ),
    );
  }

  Widget buildDrawerTitle (BuildContext context){
    return Container(
      width: double.infinity,
      height: 100.px,
      color: Colors.orange,
      alignment: Alignment(0,0.5),
      child: Text('开始动手',style: TextStyle(fontSize: 28.px, color: Colors.black87, fontWeight: FontWeight.w400),),
    );
  }

  Widget buildListTile (BuildContext context,String title ,IconData iconData, VoidFun handler){
    return  ListTile(
      leading: Icon(iconData),
      title: Text(title,style: Theme.of(context).textTheme.displayMedium),
      onTap: handler
    );
  }

}

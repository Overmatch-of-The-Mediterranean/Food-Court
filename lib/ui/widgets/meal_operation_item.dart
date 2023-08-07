import 'package:favorcate/core/extension/int_extension.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';

class HYMealOperationItem extends StatelessWidget {
  final String _name;
  final Widget _icon;

  HYMealOperationItem(this._name,this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.px,
      padding: EdgeInsets.symmetric(vertical: 12.px),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _icon,
          SizedBox(width: 3.px),
          Text(_name),
        ],
      ),
    );
  }
}

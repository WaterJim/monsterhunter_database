import 'package:flutter/material.dart';

class SkillItemHorizontal extends StatelessWidget{

  SkillItemHorizontal({Key key, this.active: false, this.title: '', this.name: '', this.level: 0}) : super(key: key);

  final bool active;
  final String title;
  final String name;
  final int level;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
//                Icon(Icons.ac_unit, size: 18.0,),
                Text(title),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: new Border.all(width: 1.0, color: Colors.grey),
              color: Colors.black,
            ),
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(color: active ? Colors.white : Colors.grey,),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: active ? Colors.white : Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

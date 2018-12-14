import 'package:flutter/material.dart';

class SkillItemVertical extends StatelessWidget {

  SkillItemVertical({Key key, this.active: false, this.name: '', this.level: 0}) : super(key: key);

  final bool active;
  final String name;
  final int level;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      width: 35,
      decoration: BoxDecoration(
        border: new Border.all(width: 1.0, color: Colors.grey),
        color: Colors.black,
      ),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.fromLTRB(2.0, 5.0, 2.0, 5.0),
            child: Text(name, style: TextStyle(fontSize: 12.0),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 15.0),
            child: Text('--', style: TextStyle(fontSize: 12.0),),

          ),
        ],
      ),
    );
  }

}

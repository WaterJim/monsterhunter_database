import 'package:flutter/material.dart';

class SkillItemVertical extends StatelessWidget {

  SkillItemVertical({Key key, this.active: false}) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: BoxDecoration(
        border: new Border.all(width: 1.0, color: Colors.grey),
        color: Colors.black,
      ),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.fromLTRB(2.0, 5.0, 2.0, 5.0),
            child: Text("攻击珠", style: TextStyle(fontSize: 12.0),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
            child: Text("7", style: TextStyle(fontSize: 12.0),),

          ),
        ],
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'dart:ui';

class EquipmentGroup extends StatefulWidget{
  @override
  EquipmentGroupState createState() {
    // TODO: implement createState
    return new EquipmentGroupState();
  }
}


class EquipmentGroupState extends State<EquipmentGroup>{
  @override
  Widget build(BuildContext context) {
//    double screenWidth = window.physicalSize.width;
    double screenWidth = MediaQuery.of(context).size.width;
    return new Container(
      width: screenWidth / 3,
      color: Colors.black54,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                groupItem("基础条件", false),
                groupItem("基础条件", false),
                groupItem("基础条件", false),
              ],
            ),
          ),
          searchItem("搜索技能", false),
        ],
      ),
    );
  }

  Widget groupItem(String itemName, bool isSelected) {
    return new Container(
      padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
      child: Text(
        itemName,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14.0),
      ),
    );
  }

  Widget searchItem(String itemName, bool isSelected) {
    return new Container(
      padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Icon(
              Icons.search,
              size: 16.0,
            ),
            new Text(
              itemName,
              style: TextStyle(fontSize: 14.0),

            ),
          ],
        ),
      ),
    );
  }
}
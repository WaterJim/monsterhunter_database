import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:monsterhunter_database/mhw/data/skill_group.dart';

class EquipmentGroup extends StatefulWidget{

  EquipmentGroup({Key key, this.groupType : 1, @required this.onSelectChanged}) : super(key : key);

  @override
  _EquipmentGroupState createState() {
    return new _EquipmentGroupState();
  }

  final int groupType;
  final ValueChanged<int> onSelectChanged;
}


class _EquipmentGroupState extends State<EquipmentGroup>{

  int _highlightId = 0;
  List<SkillGroup> _skillList = new List.from(skillGoupList.whereType());
  List<SkillGroup> _equipList = new List.from(equipGoupList.whereType());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int groupItemCount = widget.groupType == 1 ? _skillList.length : _equipList.length;
    List<SkillGroup> groupItemList = widget.groupType == 1 ? _skillList : _equipList;
    return new Container(
      width: screenWidth / 3,
      color: Colors.black38,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: groupItemCount,
              itemBuilder: (BuildContext context, int index){
                SkillGroup skillItem = groupItemList[index];
                return groupItem(skillItem.groupName, skillItem.subTitle, false);
              },
            ),
          ),
          searchItem("搜索技能", false),
        ],
      ),
    );
  }

  Widget groupItem(String itemName, String subItemName, bool isSelected) {
    return new Container(
      padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
      child: Row(
        children: <Widget>[
          Text(
            itemName,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14.0, color: isSelected ? Colors.white : Colors.grey),
          ),
          Text(
            subItemName != '' ? '(' + subItemName + ')' : '',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 10.0, color: isSelected ? Colors.white : Colors.grey),
          ),
        ],
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
              color: isSelected ? Colors.white : Colors.grey,
              size: 16.0,
            ),
            new Text(
              itemName,
              style: TextStyle(fontSize: 14.0, color: isSelected ? Colors.white : Colors.grey),

            ),
          ],
        ),
      ),
    );
  }



  void _handleItemSelectChanged(int itemId) {
    setState(() {
      _highlightId = itemId;
    });
  }
}
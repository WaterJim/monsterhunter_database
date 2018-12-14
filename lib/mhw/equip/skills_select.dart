import 'package:flutter/material.dart';
import 'package:monsterhunter_database/mhw/equip/skill_item_vertical.dart';
import 'package:monsterhunter_database/mhw/equip/skill_item_horizontal.dart';
import 'package:monsterhunter_database/mhw/data/skill_group.dart';
import 'package:monsterhunter_database/mhw/data/skill_info.dart';

class SkillsSelect extends StatefulWidget {

  SkillsSelect({Key key, }) : super(key: key);

  @override
  SkillsSelectState createState() {
    // TODO: implement createState
    return new SkillsSelectState();
  }
}

class SkillsSelectState extends State<SkillsSelect> {

  List<SkillGroup> _skillList = new List.from(skillGoupList.whereType());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: Column(
          children: getGroupArray(),
        ),
      ),
    );
  }

  Widget buildBaseSkillsSelect() {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "基础条件",
            style: TextStyle(color:Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SkillItemHorizontal(active: false, title: '性别', name: '男', level: 0,),
                SkillItemHorizontal(active: false, title: '配装方案数', name: '超会心', level: 0,),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SkillItemHorizontal(active: false, title: '武器孔', name: '无', level: 0,),
                SkillItemHorizontal(active: false, title: '最低防御力', name: '', level: 0,),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Text(
              "抗性要求",
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SkillItemVertical(active: false, name: '火', level: 20),
                SkillItemVertical(active: false, name: '水', level: 20),
                SkillItemVertical(active: false, name: '雷', level: 20),
                SkillItemVertical(active: false, name: '冰', level: 20),
                SkillItemVertical(active: false, name: '龙', level: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGroupSkillsSelect(int groupId) {
    SkillGroup groupItem = _skillList[groupId];
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Text(
                  groupItem.groupName,
                  style: TextStyle(color:Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  groupItem.subTitle != '' ? '(' + groupItem.subTitle + ')' : '',
                  style: TextStyle(color:Colors.grey, fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }

  getGroupArray() {
    List<Widget> showList = new List();
    showList.add(buildBaseSkillsSelect());
    for(int index = 0; index < _skillList.length; index++) {
      showList.add(buildGroupSkillsSelect(index));
    }
    return showList;
  }
}
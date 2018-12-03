import 'package:flutter/material.dart';
import 'package:monsterhunter_database/mhw/equip/skill_item_horizontal.dart';
import 'package:monsterhunter_database/mhw/equip/skill_item_vertical.dart';

class EquipmentSkill extends StatefulWidget{
  @override
  _EquipmentSkillState createState() {
    // TODO: implement createState
    return new _EquipmentSkillState();
  }
}


class _EquipmentSkillState extends State<EquipmentSkill> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(

      child: Column(
        children: <Widget>[
            SkillItemHorizontal(active: false, title: '武器孔', name: '超会心', level: 0,),
//          SkillItemVertical(active: false,),
        ],
      ),
    );
  }
}
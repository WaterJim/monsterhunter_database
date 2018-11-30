import 'package:flutter/material.dart';
import 'package:monsterhunter_database/mhw/equip/equipment_group.dart';

class MHWEquipmentReady extends StatefulWidget {
  @override
  _MHWEquipmentReady createState() {
    // TODO: implement createState
    return new _MHWEquipmentReady();
  }
}

class _MHWEquipmentReady extends State<MHWEquipmentReady> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.dark(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("配装器"),
          leading: new Icon(Icons.arrow_back),
        ),
        body: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mhw_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: new Column(
            children: <Widget>[
              topActionBar(),
              skillGroupList(),
              bottomActionBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomActionBar() {
    double screenWidth = MediaQuery.of(context).size.width;
    return new Expanded(
      child: Row(
        children: <Widget>[
          Container(
            width: screenWidth / 3,
            color: Colors.grey,
            child: FlatButton(
              onPressed: null,
              child: Text(
                "重置",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lime,
              child: FlatButton(
                onPressed: null,
                child: Text(
                  "开始配装",
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget topActionBar() {
    return new Container(
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.all(16.0),
                  child: new Text(
                    '平台选择',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.all(16.0),
                  child: new Text(
                    '技能选择',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.all(16.0),
                  child: new Text(
                    '装备设定',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
          new Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget skillGroupList() {
    return new Container(
      height: 450.0,
      child: Row(
        children: <Widget>[
          new Align(
            alignment: FractionalOffset.topLeft,
            child: new EquipmentGroup(groupType: 1, onSelectChanged: null,),
          )
        ],
      ),
    );
  }

  Widget skillSettingList() {}
}

import 'package:flutter/material.dart';

class MHWEquipmentReady extends StatefulWidget{
  @override
  _MHWEquipmentReady createState() {
    // TODO: implement createState
    return new _MHWEquipmentReady();
  }
}


class _MHWEquipmentReady extends State<MHWEquipmentReady>{
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
            ],
          ),
        ),
      ),
    );
  }


  Widget bottomActionBar() {

  }

  Widget topActionBar() {
    return new Container(
      decoration: BoxDecoration(
        color: Colors.black87,
      ),
      child: new Row(
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
      )
    );
  }

  Widget skillGroupList() {

  }

  Widget skillSettingList() {

  }
}
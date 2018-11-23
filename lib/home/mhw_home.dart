import 'package:flutter/material.dart';
import 'package:monsterhunter_database/mhw/equipment_ready.dart';

class MHWHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.dark(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("怪物猎人 世界"),
          leading: new Icon(Icons.arrow_back),
        ),
        body: mhwHome(context),
      ),
    );

  }

  Widget mhwHome(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new AssetImage("assets/mhw_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: FlatButton(
        child: new Text("配装器"),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) {
                return new MHWEquipmentReady();
              }
          ));
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Index extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('怪物猎人数据库'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Expanded(
              child: new Card(
                child: new Container(
                  alignment: Alignment.center,
                  child: new Text("怪物猎人 世界", style: new TextStyle(color: Colors.white70, fontSize: 24)),
                ),
              )
            ),
            new Expanded(
                child: new Card(
                  child: new Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage(""),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: new Text("怪物猎人 XX", style: new TextStyle(color: Colors.white70, fontSize: 24)),
                  ),
                )
            ),
            new Expanded(
                child: new Card(
                  child: new Container(
                    alignment: Alignment.center,
                    child: new Text("敬请期待", style: new TextStyle(color: Colors.white70, fontSize: 24)),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}
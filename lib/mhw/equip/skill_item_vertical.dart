import 'package:flutter/material.dart';

class SkillItemVertical extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class _SkillItemVerticalState extends State<SkillItemVertical> {

  bool _bHighlight = false;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: BoxDecoration(
        border: new Border.all(width: 10.0, color: Colors.black38),
      ),
      child: ,
    );
  }


  void _handleItemClicked() {
    setState(() {
      _bHighlight = !_bHighlight;
    });
  }
}

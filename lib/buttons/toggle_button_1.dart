import 'package:flutter/material.dart';

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
    isSelected: isSelected,
    children: [
      Container(width: (MediaQuery.of(context).size.width - 36)/3, child: new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[new Icon(Icons.whatshot,size: 16.0,color: Colors.red,),new SizedBox(width: 4.0,), new Text("HOT",style: TextStyle(color: Colors.red),)],)),
      Container(width: (MediaQuery.of(context).size.width - 36)/3, child: new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[new Icon(Icons.invert_colors,size: 16.0,color: Colors.yellow[800],),new SizedBox(width: 4.0,), new Text("WARM",style: TextStyle(color: Colors.yellow[800]))],)),
      Container(width: (MediaQuery.of(context).size.width - 36)/3, child: new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[new Icon(Icons.ac_unit,size: 16.0,color: Colors.blue,),new SizedBox(width: 4.0,), new Text("COLD",style: TextStyle(color: Colors.blue))],)),
    ],
    onPressed: (int index) {
      setState(() {
        for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
          if (buttonIndex == index) {
            isSelected[buttonIndex] = true;
          } else {
            isSelected[buttonIndex] = false;
          }
        }
      });
    },
  );
}

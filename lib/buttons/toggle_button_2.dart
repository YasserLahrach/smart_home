import 'package:flutter/material.dart';

class ToggleButtons2 extends StatefulWidget {
  @override
  _ToggleButtons2State createState() => _ToggleButtons2State();
}

class _ToggleButtons2State extends State<ToggleButtons2> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
    isSelected: isSelected,
    children: [
      SizedBox(
          width: (MediaQuery.of(context).size.width - 36)/2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 4.0,),
              Text("ON",style: TextStyle(color: Colors.blue),
              )
            ],
          )
      ),
      SizedBox(
          width: (MediaQuery.of(context).size.width - 36)/2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 4.0,),
              Text("OFF",style: TextStyle(color: Colors.red),
              )
            ],
          )
      ),
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

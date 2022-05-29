import 'package:flutter/material.dart';

class ToggleButtons4 extends StatefulWidget {
  @override
  _ToggleButtons4State createState() => _ToggleButtons4State();
}

class _ToggleButtons4State extends State<ToggleButtons4> {
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
              Text("OPEN",style: TextStyle(color: Colors.blue),
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
              Text("CLOSE",style: TextStyle(color: Colors.red),
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

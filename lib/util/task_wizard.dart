// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:goaly/util/my_button.dart';

class TaskWizard extends StatelessWidget {
  
  final TextEditingController controller;
  final VoidCallback onCreate;
  final VoidCallback onCancel;
  
  const TaskWizard({
    super.key,
    required this.controller,
    required this.onCreate,
    required this.onCancel,
  });

  static const List<MaterialColor> taskColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];

  static const List<Icon> taskIcons = [
    Icon(Icons.code),
    Icon(Icons.brush),
    Icon(Icons.music_note),
    Icon(Icons.auto_stories),
    Icon(Icons.school),
  ];

  List<Widget> buildColorSquares(List<MaterialColor> colors){
    List<Widget> colorSquares = [];

    for (int i = 0; i < colors.length; i++){
      colorSquares.add(Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colors[i],
        ),
      ));
    }
    return colorSquares;
  }

  List<Widget> buildIconButtons(List<Icon> icons) {
    List<IconButton> iconButtons = [];
    
    for (int i = 0; i < icons.length; i++) {
      iconButtons.add(IconButton.outlined(
        color: Colors.white,

        onPressed: () {}, 
        icon: icons[i],
      ));
    }

    return iconButtons;
  }
  @override
  Widget build(BuildContext context) {

    // TO DO: Color Picker and Icon Picker
    return AlertDialog(
      backgroundColor: Color.fromRGBO(53, 53, 53, 1),
      content: SizedBox(
        height: 330,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // NAME FIELD
            Text(
              "NAME:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Name the task",
                )
              ),
            ),

            // COLOR PICKER
            Text(
              "COLOR:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildColorSquares(taskColors),
              ),
            ),

            // ICON PICKER
            Text(
              "ICON:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: buildIconButtons(taskIcons),
              ),
            ),

            // CREATE AND CANCEL BUTTONS
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: "CREATE", 
                    onPressed: onCreate,
                  ),
                  MyButton(
                    text: "CANCEL", 
                    onPressed: onCancel,
                  ),
                ],
              )
            ),
          ],
        )
      )
    );
  }
}
// [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.red,
//                     ),
//                   ),
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.orange,
//                     ),
//                   ),
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.green,
//                     ),
//                   ),
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.blue,
//                     ),
//                   ),
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.purple,
//                     ),
//                   ),
//                 ],
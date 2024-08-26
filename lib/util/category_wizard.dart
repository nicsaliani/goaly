// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryWizard extends StatelessWidget {
  
  final TextEditingController controller;
  final VoidCallback onCreate;
  final VoidCallback onCancel;
  
  const CategoryWizard({
    super.key,
    required this.controller,
    required this.onCreate,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {

    // TO DO: Color Picker and Icon Picker
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 53, 53, 53),
      content: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Name the Category",
              )
            ),
          ],
        )
      )
    );
  }
}
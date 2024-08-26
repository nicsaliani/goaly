// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  
  // final String categoryName;
  // final Color categoryColor;
  // final Icon categoryIcon;
  // final int tasksTotal;
  // final int tasksDone;
  // final bool isOpen;

  const CategoryTile({
    super.key,
    // required this.categoryName,
    // required this.categoryColor,
    // required this.categoryIcon,
    // required this.tasksTotal,
    // required this.tasksDone,
    // required this.isOpen,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
        ),
      ),
    );
  }
}
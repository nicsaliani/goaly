// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:goaly/util/task_tile.dart';
import 'package:goaly/data/database.dart';
import 'package:goaly/util/task_wizard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  CategoryDatabase db = CategoryDatabase();
  final _controller = TextEditingController();

  void saveNewTask() {
    setState(() {
      db.taskTiles.add([_controller.text, false]);
    });
  }
  // TO DO: Create and Cancel functions
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return TaskWizard(
          controller: _controller,
          onCreate: () {}, 
          onCancel: () {}
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 53, 53, 53),
      appBar: AppBar(
        title: Text(
          "GOALY",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
        actions: <Widget>[

          // ADD_TASK BUTTON
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            color: Colors.white,
            tooltip: "Add Task",
            onPressed: (){
              createNewTask();
            },
          ),

          // SETTINGS BUTTON
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            tooltip: "Settings",
            onPressed: (){
              // Open Settings Page
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: db.taskTiles.length,
        itemBuilder: (context, index) {
          return TaskTile(

          );
        }
      ),
    );
  }
}
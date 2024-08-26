// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:goaly/util/category_tile.dart';
import 'package:goaly/data/database.dart';
import 'package:goaly/util/category_wizard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  CategoryDatabase db = CategoryDatabase();
  final _controller = TextEditingController();

  // TO DO: Create and Cancel functions
  void createNewCategory() {
    showDialog(
      context: context,
      builder: (context) {
        return CategoryWizard(
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

          // ADD_CATEGORY BUTTON
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            color: Colors.white,
            tooltip: "Add Category",
            onPressed: (){
              createNewCategory();
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
        itemCount: db.categoryTiles.length,
        itemBuilder: (context, index) {
          return CategoryTile(

          );
        }
      ),
    );
  }
}
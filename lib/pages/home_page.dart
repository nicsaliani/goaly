// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 53, 53, 53),
      appBar: AppBar(
        title: Center(
          child: Text(
            "GOALY",
            style: TextStyle(
              color: Colors.white
              
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      )
    );
  }
}
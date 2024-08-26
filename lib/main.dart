import 'package:flutter/material.dart';
import 'package:goaly/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

//test

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Goaly",
      home: HomePage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:task_05/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Screen App',
      home: FirstScreen(),
    );
  }
}
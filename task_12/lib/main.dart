import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_12/container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Two Screen App',
      home: FancyContainer(),
    );
  }
}

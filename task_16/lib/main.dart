import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AnimatedBoxApp());
}

class AnimatedBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 16',
      debugShowCheckedModeBanner: false,
      home: AnimatedBoxScreen(),
    );
  }
}

class AnimatedBoxScreen extends StatefulWidget {
  @override
  _AnimatedBoxScreenState createState() =>
      _AnimatedBoxScreenState();
}

class _AnimatedBoxScreenState
    extends State<AnimatedBoxScreen> {
  double _width = 200;
  double _height = 200;
  Color _color = const Color.fromARGB(255, 55, 200, 188);
  BorderRadiusGeometry _borderRadius =
      BorderRadius.circular(20);

  void _changeBox() {
    final random = Random();
    setState(() {
      _width = random.nextDouble() * 200 + 100;
      _height = random.nextDouble() * 200 + 100;
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _borderRadius = BorderRadius.circular(
        random.nextDouble() * 100,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        backgroundColor: const Color.fromARGB(
          255,
          56,
          183,
          60,
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 600),
          curve: Curves.easeInOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                offset: Offset(4, 6),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeBox,
        child: Icon(Icons.play_arrow),
        backgroundColor: const Color.fromARGB(
          255,
          58,
          183,
          75,
        ),
        tooltip: 'Animate!',
      ),
    );
  }
}

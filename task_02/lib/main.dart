import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Text Changer',
      home: TextChangeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextChangeScreen extends StatefulWidget {
  const TextChangeScreen({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _TextChangeScreenState createState() => _TextChangeScreenState();
}

class _TextChangeScreenState extends State<TextChangeScreen> {
  String _displayText = 'Press the button';

  void _changeText() {
    setState(() {
      _displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Text Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _displayText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeText,
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}

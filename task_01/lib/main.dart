import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              color: const Color.fromARGB(255, 12, 1, 72),
              fontSize: 50,
              fontFamily: 'Ubuntu Mono',
            ),
          ),
        ),
      ),
    );
  }
}

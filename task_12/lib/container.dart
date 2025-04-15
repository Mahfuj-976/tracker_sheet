import 'package:flutter/material.dart';

class FancyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.deepPurple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),

        ),
        child: Text(
          'Final a mark dian',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

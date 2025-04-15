import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey('Search'),
      color: Colors.green[50],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text("Search for content", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: ItemListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ItemListScreen extends StatelessWidget {
  final List<int> items = List.generate(20, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Numbered List'), centerTitle: true),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text('Item ${items[index]}'));
        },
      ),
    );
  }
}

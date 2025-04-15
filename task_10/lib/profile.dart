import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey('Profile'),
      color: Colors.purple[50],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
            ),
            SizedBox(height: 20),
            Text("Your Profile", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

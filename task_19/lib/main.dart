import 'package:flutter/material.dart';

void main() {
  runApp(CustomDrawerApp());
}

class CustomDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWithDrawer(),
    );
  }
}

class HomeWithDrawer extends StatefulWidget {
  @override
  _HomeWithDrawerState createState() => _HomeWithDrawerState();
}

class _HomeWithDrawerState extends State<HomeWithDrawer> {
  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    double drawerWidth = 250;

    return Scaffold(
      body: Stack(
        children: [
          // Main Content
          Scaffold(
            appBar: AppBar(
              title: Text("Custom Side Drawer"),
              backgroundColor: Colors.deepPurple,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: _toggleDrawer,
              ),
            ),
            body: Center(
              child: Text(
                'Swipe or Tap the Menu Button!',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),

          // Custom Drawer
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            top: 0,
            bottom: 0,
            left: _isDrawerOpen ? 0 : -drawerWidth,
            child: SizedBox(
              width: drawerWidth,
              child: Material(
                elevation: 16,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Tap to close area
          if (_isDrawerOpen)
            Positioned.fill(
              left: drawerWidth,
              child: GestureDetector(
                onTap: _toggleDrawer,
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

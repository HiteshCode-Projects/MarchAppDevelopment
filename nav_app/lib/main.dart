import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Navigation Session', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //The Navigator pushes To settings
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingPage()),
            );
          },
          child: Text("Go To Settings"),
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //This removes current page
            Navigator.pop(context);
          },
          child: Text('Back To Home'),
        ),
      ),
    );
  }
}

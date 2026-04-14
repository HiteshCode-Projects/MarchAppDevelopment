import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile")),

        body: Center(
          child: Container(
            width: 400,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text("John Smith", style: TextStyle(fontSize: 22)),

                SizedBox(height: 20),

                Text("Fluter Developer"),

                SizedBox(height: 15),

                Text("India"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

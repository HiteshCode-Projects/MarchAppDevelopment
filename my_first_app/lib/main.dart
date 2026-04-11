import 'package:flutter/material.dart';

void main() {
  //Entry Point of the Application
  runApp(MyApp()); //Tells Flutter to show somwthing on Screen.
}

//StatelessWidget - That Does Not Change the UI/Screen
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Build The Widget - Screen
    return MaterialApp(

        home:Scaffold(
   
        appBar: AppBar(title: Text("WhastApp")),

        body: Center(
             child: Text("Hello User- Welcome To Flutter😎"),
        ),             

        ), 


    );
  }
}

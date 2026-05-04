import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  int likes = 10;

  void increaseCount() {
    setState(() {
      count++;
    });
  }


   void addLike() {
    setState(() {
      likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Counter App")),

        // body: Center(
        //   child: Text(
        //     "Count / Likes :  $count",
        //     style: TextStyle(fontSize: 24),
        //   ),
        // ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: increaseCount,
        //   child: Icon(Icons.add),
        // ),


        //Example-2

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite , color: Colors.red, size: 50),

            Text("$likes Likes" ,  style: TextStyle(fontSize: 24),),

            SizedBox(height: 10),

            ElevatedButton(onPressed: addLike, child: Text("Like 💖"))
          ],

        ),
      ),
    );
  }
}

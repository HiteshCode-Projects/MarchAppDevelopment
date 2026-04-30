import 'package:flutter/material.dart';

void main() {
  runApp(InputApp());
}

class InputApp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Screen Structure
        appBar: AppBar(title: Text("Input Example")),

        body: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter Your Name ",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: EmailController,
                decoration: InputDecoration(
                  labelText: "Enter Your Email",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Enter Your Password ",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Product ...",
                  border: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  print(EmailController.text);
                  print(passController.text);
                },
                child: Text("Submit"),
              ),

              SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  print(passController.text);
                },
                child: Text("Sign Up"),
              ),

              SizedBox(height: 10),

              IconButton(
                onPressed: () {
                  print(EmailController.text);
                },
                icon: Icon(Icons.favorite, color: Colors.red, size: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

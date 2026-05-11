import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailControlller = TextEditingController();

  final passwordController = TextEditingController();

  //Authentication-IMPORTANT
  final auth = FirebaseAuth.instance;

  //FireStore
  // final firestore = FirebaseFirestore.instance;

  //SIGN UP or Register
  void signUp() async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: emailControlller.text,
        password: passwordController.text,
      );

      //Save User Data in Firestore
      // await firestore.collection('users').doc(user.user!.uid).set({
      //   'email': emailControlller.text,
      //   'createdAt': Timestamp.now(),
      // });

      Navigator.push(
      context ,
      MaterialPageRoute(builder: (_)=> HomeScreen()),
      );

      // ScaffoldMessenger.of(
      //   context,
      // ).showSnackBar(SnackBar(content: Text("User Created & Saved")));

      print("User Created");
    } catch (e) {
      print(e);
    }
  }

  //Login
  void login() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: emailControlller.text,
        password: passwordController.text,
      );
       
        Navigator.push(
      context ,
      MaterialPageRoute(builder: (_)=> HomeScreen()),
      );


      // ScaffoldMessenger.of(
      //   context,
      // ).showSnackBar(SnackBar(content: Text("Logged in")));

      print("User Logged In");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Auth Sytem")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: emailControlller,
              decoration: InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: signUp, child: Text("Sign Up")),
            ElevatedButton(onPressed: login, child: Text("Login ")),
          ],
        ),
      ),
    );
  }
}

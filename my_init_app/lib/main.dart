import 'package:flutter/material.dart';

void main() {
  runApp(ProfileLoaderApp());
}

class ProfileLoaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: ProfileScreen());
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    //API
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Profile App")),

      body: Center(

        child: isLoading ? CircularProgressIndicator() : Text("Welcome Guys")

      ),
    );
  }
}

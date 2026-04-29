import 'package:flutter/material.dart';

void main() {
  runApp(ProductApp());
}

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    
    home: Scaffold(

   appBar: AppBar(title: Text("Product Store")),

   body: Center(

  child: Container(

   width: 300,

   padding: EdgeInsets.all(16),

   decoration: BoxDecoration(
    border: Border.all(color: Colors.green) ,
    borderRadius: BorderRadius.circular(12),
   ),

   child: Column(
     mainAxisSize: MainAxisSize.min,

    children: [

        Image.network(
          "https://images.pexels.com/photos/8000618/pexels-photo-8000618.jpeg",
          width: 200,
           height: 220,
        ),

        SizedBox(height: 10),

        Text("Rs 2,499"),

        SizedBox(height: 10),

        Row(
         mainAxisAlignment: MainAxisAlignment.center,

         children: [
          Icon(Icons.shopping_bag_rounded),
          SizedBox(width: 8),
          ElevatedButton(onPressed : ()=>{} , child:Text("Add To Cart")),
         ],

        ),




    ],



   ),

   ),

   ),

    ),

    );
  }
}

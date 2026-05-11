import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'notification_service.dart';

class HomeScreen extends StatelessWidget {
  final productController = TextEditingController();

  void addProduct() async{

    await FirebaseFirestore.instance.collection('products').add({
      'name': productController.text,
      'createdAt': Timestamp.now(),
    });

  }


  @override
  Widget build(BuildContext context) {
   
      NotificationService.initialize();



        return Scaffold(

        appBar: AppBar(title: Text("Home Screen")),

        body: Column(

            children: [

              TextField(
                controller: productController,
                decoration: InputDecoration(labelText: "Product Name"),
              ),

              ElevatedButton(onPressed: addProduct, child: Text("Add Product "),
              
              ),

              Expanded(child:
               StreamBuilder(
                stream: FirebaseFirestore.instance.collection('products').snapshots(),
                
                 builder: (context, snapshot){
              
               if(!snapshot.hasData)
                return CircularProgressIndicator();


                var docs = snapshot.data!.docs;

                return ListView.builder(
 
                 itemCount: docs.length,

                 itemBuilder: (context,index){

                  var data = docs[index];

                  return ListTile(
                    title: Text(data['name']),
                  );
                 },

                );
              },






              ),),
 


            ],


        ),
 
        );



  }
}

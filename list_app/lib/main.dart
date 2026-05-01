import 'package:flutter/material.dart';

//Example 1 :
// void main() {
//   runApp(ProductListApp());
// }

// class ProductListApp extends StatelessWidget {
//   final List<String> products = [
//     "Mobile",
//     "Laptop",
//     "Headphpnes",
//     "Smart Watch",
//     "Tablet",
//     "Ear buds",
//     "Shoes",
//     "Books",
//     "Clothes",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Products")),

//         body: ListView.builder(
//           itemCount: products.length,

//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: Text(products[index]),
//               onTap: () {
//                 print(products[index]);
//               },
//               trailing: Icon(Icons.arrow_forward),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//Example - 2 Chat List
void main() {
  runApp(ChatList());
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Chat List")),

        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("John"),
              subtitle: Text("Hello How are you?"),
              trailing: Text("2:30 Pm"),
              onTap: () {
                print("Clcked");
              },
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Tejaswini"),
              subtitle: Text("Hello How are you?"),
              trailing: Text("2:30 Pm"),
              onTap: () {
                print("Clcked");
              },
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Shubham"),
              subtitle: Text("Hello How are you?"),
              trailing: Text("2:30 Pm"),
              onTap: () {
                print("Clcked");
              },
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Nakshatra"),
              subtitle: Text("Hello"),
              trailing: Text("3:30 Pm"),
              onTap: () {
                print("Clcked");
              },
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Pranav"),
              subtitle: Text("Good AfternOon"),
              trailing: Text("3:35 Pm"),
              onTap: () {
                print("Clcked");
              },
            ),
          ],
        ),
      ),
    );
  }
}

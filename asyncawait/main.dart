//Problem

// void main() {
//   print("Start App");

//   fethDate();

//   print("End App");
// }

// void fethDate() {
//   for (int i = 0; i < 1000000000000; i++) {
//     print("Data Loaded");
//   }
// }

//Solution
//Create Future Async Function

//

// Future<int> fetchBalance() {
//   return Future.delayed(Duration(seconds: 5), () => 500);
// }

// Future<void> main() async {
//   print("Checking Wallet....");

//   int balance = await fetchBalance();

//   if (balance >= 300) {
//     print("Payment Sucessfull");
//   } else {
//     print("Insufficent Balance");
//   }
// }

//Example 3-
Future<String> placeOrder() {
  return Future.delayed(Duration(seconds: 2), () => "Order Placed");
}

Future<String> DeliverYOrder() {
  return Future.delayed(Duration(seconds: 5), () => "Order Delivered");
}

Future<void> main() async {
  print("Ordering foooddd...");

  print(await placeOrder());

  print("Waiting For Delivery");
  print(await DeliverYOrder());

  print("Enjoy Your Meal");
}

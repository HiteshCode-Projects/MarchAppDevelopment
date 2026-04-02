// //Parent Class

// class User {
//   String name;

//   User(this.name);
//   //Constructor - Specail Function Created As Same clss Name

//   void login() {
//     print("$name Logged in");
//   }
// }

// //Child Class
// class Admin extends User {
//   Admin(String name) : super(name);

//   void deleteUser() {
//     print("User Deleted");
//   }
// }

// //Child - Yes
// class Customer extends User {
//   Customer(String name) : super(name);

//   void placeOrder() {
//     print("Order Placed");
//   }
// }

// void main() {
//   Admin admin = Admin("Gouri");

//   admin.login();
//   admin.deleteUser();

//   Customer cus = Customer("Rahul");

//   cus.login();
//   cus.placeOrder();
// }

//Method Overirdding - Same Method/Function Name in Different Class
// class User {
//   void login() {
//     print("User Logged in");
//   }
// }

// class Admin extends User {
//   @override
//   void login() {
//     print("Admin Logged in With Full Access");
//   }
// }

// void main() {
//   Admin ad = Admin();
//   ad.login();
// }

//Example2
class User {
  void access() {
    print("Limited Access");
  }
}

class Admin extends User {
  @override
  void access() {
    print("Full Acess");
  }
}

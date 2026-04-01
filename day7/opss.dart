//

//class with Method(Function)

// class User {
//   String name = "";
//   int age = 0;

//   void greet() {
//     print("Hello , my name is $name");
//   }
// }

// void main() {
//   User xyz = User();

//   xyz.name = "Amit";
//   xyz.greet();
// }

//class Constructor- Same the class Name
// class User {
//   String name = "";
//   int age = 0;

//   User(this.name, this.age);

//   void greet() {
//     print("Hello , my name is $name");
//   }
// }

// void main() {
//   User abc = User("Sneha", 21);

//   print(abc.name);
//   abc.greet();
// }

//Login User
class User {
  String username;
  String password;

  User(this.username, this.password);

  bool login() {
    return username == "admin" && password == "1234";
  }
}

void main() {
  User customer = User("Rahul", "Rahul@123");

  User developer = User("admin", "1234");

  if (customer.login()) {
    print("Login Sucessfully By Cutsomer");
  } else if (developer.login()) {
    print("Login Sucessfully By Admin");
  } else {
    print("Login Failed");
  }

  
}

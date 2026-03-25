void main() {
  //1. function with void

  void sayHello() {
    //body of function - instruction for task
    print("Hello Guys");
  }

  sayHello(); //Callimg function to do the task

  //2. Function with Parameters(Input/Dummy Data)

  void greetUser(String name) {
    print("Welcome $name");
  }

  greetUser("Pranav");
  greetUser("Krishna");

  //3.Return Value

  int calulateTotal(int price, int quantity) {
    return price * quantity;
  }

  int total = calulateTotal(100, 2);
  print(total);

  //Return type bool

  bool isAdult(int age) {
    return age >= 18;
  }

  bool result = isAdult(20);
  print(result);

  //Arrow Function- Function in one line

  int add(int a, int b) => a + b;
  print(add(5, 3));

  //Optional Parameter- Used when data is not always needed

  void showProfile(String name, [int? age]) {
    print("Name : $name");

    if (age != null) {
      print("Age : $age");
    }
  }

  showProfile("Pranika");
  showProfile("john", 36);

  //Real App Example

  bool isLoggedIn = login("admin", "12345");

  String message = isLoggedIn ? "Login Sucess" : "Login Failed";
  print(message);
}

bool login(String username, String password) {
  return username == "admin" && password == "1234";
}

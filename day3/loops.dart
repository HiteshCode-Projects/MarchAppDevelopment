void main() {
  //Task - Print Number 1 to 10

  print("1");
  print("2");
  print("3");

  // loop - Do the same task again and again

  //1Syntax . for(star point ; ending/condition point ; increment/decrement ){ Task }

  //Task print Number 1 to 10

  // for (int i = 1; i <= 10; i++) {
  //   print(i);
  // }

  // for (int j = 1; j <= 5; j++) {
  //   print("Loading item $j");
  // }

  //while Loop - Entry Controlled Loop - Until the condition is false
  //syntax - while(condition){ task  }

  // int attempts = 1;

  // while (attempts <= 3) {
  //   print("Login Attempt $attempts");
  //   attempts++;
  // }

  //do - while (Run at least once)

  int count = 7;

  do {
    print("Showing Welcome Message");
    count++;
  } while (count <= 5);

  //4 . break(Stop Loop)

  for (int z = 1; z <= 5; z++) {
    if (z == 3) {
      print("Item Found");
      break;
    }

    print("Checking item $z");
  }

  //5 . continue(Skip current Loop)

  for (int q = 1; q <= 5; q++) {
    if (q == 3) {
      continue;
    }

    print("Showing Item $q");
  }

  //LIST - List help us to store multiple data at the same time

  List<String> products = ["Mobile", "Laptop", "Tablet"];

  for (String abc in products) {
    print("Products:  $abc");
  }
}

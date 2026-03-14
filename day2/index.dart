void main() {
  //Arthmetic Operators - + , - , * , / , %
  int price = 100;
  int qty = 2;

  int total = price * qty;
  print(total);

  //Relational Operators(Compare) - true or false

  int age = 18;
  bool canVote = age >= 18;
  print(canVote);

  double balance = 500;
  bool canPay = balance >= 700;
  print(canPay);

  //Logical Op
  // AND - Both Condition True output is true
  // OR - Only 1 condition i True Then Output is true

  bool isLoggedin = true;
  bool hasSubscription = false;

  bool canWatchMovie = isLoggedin && hasSubscription;
  print(canWatchMovie);

  bool isAdmin = true;
  bool isModerator = false;

  bool canDelet = isAdmin || isModerator;
  print(canDelet);

  //Assigment - Assign Value by using =
  int score = 10;

  score += 5;
  print(score);

  //Ternary Operators (Decision in one Line)
  bool isLoggedinn = true;

  String message = isLoggedinn ? "Welcome" : "Please Login";
  print(message);

  //Nulll operators Data is empty
  String? name;

  String displayName = name ?? "Guest";
  print(displayName);
}

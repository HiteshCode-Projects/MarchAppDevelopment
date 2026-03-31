void main() {
  String name = "Flutter";
  print(name);

  String user = "Pranav";
  int age = 22;

  print("My Name is $user and my age is $age");

  //String Concatenation(Joining Strings)
  String firstname = "Shubham";
  String lastname = "abc";

  String fullname = firstname + " " + lastname;
  print(fullname);

  //String LENGTH- No Of Characters in String
  String password = "123456";
  String usernname = "Bob";

  print(usernname.length);
  print(password.length);

  //Uppercase - Captial and lowercase()
  String city = "delhi";

  print(city.toUpperCase());
  print(city.toLowerCase());

  //Check id String is Empty
  String email = "";

  if (email.isEmpty) {
    print("Email Required");
  }

  //If String Contain Data
  String message = "Welcome To Dart App";

  if (message.contains("Dart")) {
    print("Dart word found");
  }

  //Replcae Text
  String phone = "123-456-7890";

  String cleanPhone = phone.replaceAll("-", "");
  print(cleanPhone);

  //String Trim - Remove Extra Space
  String uname = "     admin     ";
  print(uname.trim());

  //Split - Divide - Break
  String emaill = "user@gmail.com";

  List<String> parts = emaill.split("@");
  print(parts);

  //Utilties
  String priceText = "100";

  int price = int.parse(priceText);
  print(price);

  //Numbe to String
  int score = 90;
  String scoreText = score.toString();
  print(scoreText);
}

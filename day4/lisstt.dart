void main() {
  //List - It is used to store Multiple data at the same time
  //SYmbol - Square Bracket
  //Index No Starts with 0

  List<String> users = [
    "Pranav",
    "Krishna",
    "Nakshatra",
    "Pranika",
    "Tejaswini",
    "Vedika",
    "varunesh",
  ];

  print(users);

  print(users[3]);
  print(users[0]);

  //Add Item
  // .add("Value")
  users.add("John");
  print(users);

  //Remove Item
  // .remove("Value")
  users.remove("Pranika");
  print(users);

  //Number toitem list - .length

  print(users.length);
}

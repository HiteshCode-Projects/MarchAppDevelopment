void main() {
  //Set - It is like a list but does not allow duplicated

  Set<String> categories = {
    "Electronics",
    "Fashion",
    "Books",
    "Clothers",
    "Books",
  };
  print(categories);

  categories.add("Travel");
  print(categories);

  categories.remove("Books");
  print(categories);

  if (categories.contains("Travel")) {
    print("Travel Booked");
  }

  //Conert List to set/ to List
  List<String> items = ["Apple", "Banana", "Apple"];

  Set<String> uniqueItems = items.toSet();

  print(uniqueItems);

  //set to list
  List<String> finalList = uniqueItems.toList();
  print(finalList);

  //Set in App
  Set<String> notifications = {};

  notifications.add("New Message");
  notifications.add("New Offer");
  notifications.add("New Message");

  for (var note in notifications) {
    print(note);
  }
}

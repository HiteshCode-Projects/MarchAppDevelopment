void main() {
  //key:value pair
  Map<String, String> country = {
    'India': 'Delhi',
    'USA': 'Washington DC',
    'UK': 'London',
    'Japan': 'Tokyo',
  };

  print(country);

  Map<String, dynamic> userProfile = {
    "name": "Amit",
    "age": 22,
    "isLoggedin": true,
  };

  //Acess the values - keyname
  print(userProfile["name"]);

  print(userProfile["age"]);

  //Add items["key"] = Value

  userProfile["city"] = "Delhi";
  print(userProfile);

  //Update existing Data
  userProfile["city"] = "bangalore";
  userProfile["name"] = "pranav";

  print(userProfile);

  //remove["key"]
  userProfile.remove("age");
  print(userProfile);

  //forEach
  userProfile.forEach((key, value) {
    print("$key : $value");
  });
}


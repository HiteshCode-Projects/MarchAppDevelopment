void main() {
  //Control Flow
  //The app decides what to do based condition

  //1. if(condition) - True / Ouput

  bool isLoggedin = true;

  if (isLoggedin) {
    //Body of it - Output
    print("Welcome To Our App");
  }

  //if True- else - False (Yes or No)

  bool PaymentSucess = false;

  if (PaymentSucess) {
    print("Payment Sucessfull");
  } else {
    print("Payment Failed");
  }

  //else if - Multiple condition
  int rating = 3;

  if (rating == 5) {
    print("Execellent");
  } else if (rating == 4) {
    print("Very good");
  } else if (rating == 3) {
    print("Good");
  } else {
    print("Needs Improvment");
  }

  //Multple condition - switch - we are changing case

  int menuOptions = 2;

  switch (menuOptions) {
    case 1:
      print("Home Screen");
      break;
    case 2:
      print("Profile Screen");
      break;

    case 3:
      print("Setting Screen");
      break;

    default:
      print("Invalud Options");
  }
}

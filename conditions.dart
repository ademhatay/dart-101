void main(List<String> args) {
  num a = 10;
  num b = 20;
  num c = 30;

  if (a > b) {
    print("a is greater than b");
  } else if (b > c) {
    print("b is greater than c");
  } else {
    print("c is greater than a and b");
  }

  // Switch Case
  String grade = "A";
  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Fair");
      break;
    case "D":
      print("Poor");
      break;
    default:
      print("Invalid grade");
  }

  var ans = 11;
  ans == 10 ? print("Answer is 10") : print("Oh no!");
}

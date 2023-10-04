import 'dart:io';

void main(List<String> args) {
  print("Your Name:");
  String? name = stdin.readLineSync();
  print("Your Age:");
  int? age = int.parse(stdin.readLineSync()!);
  print("Your Height:");
  double? height = double.parse(stdin.readLineSync()!);
  print("Your Weight:");
  double? weight = double.parse(stdin.readLineSync()!);
  print("Your BMI:");
  double bmi = weight / (height * height);
  print("Your name is $name");
  print("Your age is $age");
  print("Your height is $height");
  print("Your weight is $weight");
  print("Your BMI is $bmi");
}

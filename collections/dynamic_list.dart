import 'dart:io';

void main() {
  List<int> numbers = [];

  while (true) {
    stdout.write('Enter a number (q to quit): ');
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'q') {
      break;
    }
    int number = int.tryParse(input)!;
    numbers.add(number);
  }

  print('Numbers entered: $numbers');
}

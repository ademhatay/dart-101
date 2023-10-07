void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> squares = numbers.map((number) => number * number).toList();
  print(squares); // [1, 4, 9, 16, 25]
}

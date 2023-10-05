void main(List<String> args) {
  // Klasik Liste Tanımlama
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);

  // Liste Elemanlarına Erişim
  print(numbers[0]);

  // Liste Elemanlarını Değiştirme
  numbers[0] = 10;
  print(numbers);

  // Listeye Eleman Ekleme
  numbers.add(6);

  // Listeden Eleman Silme
  numbers.remove(5);

  print(numbers);

  List<int> numbers3 = List.generate(5, (index) => index + 1);
  print(numbers3);

  // dynamic
  List<dynamic> numbers4 = [1, 2, 3, "4", true];
  print(numbers4);
}

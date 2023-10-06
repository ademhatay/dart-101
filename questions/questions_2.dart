import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
  * Question 1: Şehirleri tutan bir liste oluşturun ve 4 il ekleyip ekrana yazdırın.
  *
  * Question 2: Keyleri String, Valueları dinamik olan bir map oluşturun. Kendi bilgisayarınızın özelliklerini ekleyin ve ekrana yazdırın.
  *
  * Question 3: Her bir elemanı keyleri string, valueları dinamik map olan bir liste oluşturun. Her bir eleman il, ilçe sayısı ve plaka kodunu tutsun. Listeyi okunaklı şekilde (cümle halinde) ekrana yazdırın.
  *
  * Question 4: 5 Elemanlı iki farklı liste oluşturun. Elemanlar 0-50'ye rastgele şekilde oluşturulsun. Bu elemanları tek bir listeye aktarın, oluşan son listenin karelerini tutan bir set oluşturup ekrana yazdırın.
  *
  * Question 5: Kullanıcıdan pozitif integer sayılar alın ve listede tutun. kullanıcı q'ya basıp çıkmak istediğinde tutulan sayıların ortalamasını yazdırın.
  *
  */

  question1();

  question2();

  question3();

  question4();

  question5();
}

void question1() {
  List<String> cities = ["Ankara", "İstanbul", "İzmir", "Bursa"];
  print(cities);
}

void question2() {
  Map<String, dynamic> computer = {
    "model": "Macbook Pro",
    "year": 2019,
    "color": "Silver",
    "price": 15000
  };

  print(computer);
}

void question3() {
  List<Map<String, dynamic>> cities = [
    {"name": "Ankara", "plate": 6, "districts": 25},
    {"name": "İstanbul", "plate": 34, "districts": 39},
    {"name": "İzmir", "plate": 35, "districts": 30},
    {"name": "Bursa", "plate": 16, "districts": 17}
  ];

  for (Map<String, dynamic> city in cities) {
    print(
        "${city["name"]} ilinin plaka kodu ${city["plate"]} ve ilçe sayısı ${city["districts"]}");
  }
}

void question4() {
  List<int> list1 = [];
  List<int> list2 = [];

  for (int i = 0; i < 5; i++) {
    list1.add(Random().nextInt(50));
    list2.add(Random().nextInt(50));
  }

  print(list1);
  print(list2);

  Set<int> set = {};

  set.addAll(list1);
  set.addAll(list2);

  print(set);
}

void question5() {
  List<int> numbers = [];

  while (true) {
    print("Sayı giriniz: ");
    String? input = stdin.readLineSync();

    if (input == "q") {
      break;
    } else {
      numbers.add(int.parse(input!));
    }
  }

  int sum = 0;

  for (int number in numbers) {
    sum += number;
  }

  print("Ortalama: ${sum / numbers.length}");
}

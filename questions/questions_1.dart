void main(List<String> args) {
  /*
  * Question 1: aldığı int parametresine kadar olan çift sayıların toplamını yazdıran fonksiyonu yazınız.

  * Question 2: dairenin alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel parametre olarak verilebilir. default değeri 3.14 olmalıdır.

  * Question 3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan ve kenar durumlarına göre ikizkenar eşkenar veya çeşitkenar üçgen olma durumunu yazdıran fonksiyonu yazınız. geriye bir değer döndürmesine gerek yoktur.

  * Question 4: Bir sayının asal olup olmadığını kontrol eden fonksiyonu yazınız. geriye bir değer döndürmesine gerek yoktur.
*/

  // Question 1
  sumOfEvenNumbers(10);

  // Question 2
  calculateAreaOfCircle(2);
  calculateAreaOfCircle(2, pi: 3);

  // Question 3
  checkTriangle(2, 2, 2);
  checkTriangle(2, 2, 3);
  checkTriangle(2, 3, 4);

  // Question 4
  checkPrimeNumber(2);
  checkPrimeNumber(3);
  checkPrimeNumber(4);
}

// Question 1
void sumOfEvenNumbers(int number) {
  int sum = 0;
  for (int i = 0; i <= number; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  print("Sum of even numbers is $sum");
}

// Question 2
void calculateAreaOfCircle(int radius, {double pi = 3.14}) {
  print("Area of circle is ${pi * radius * radius}");
}

// Question 3
void checkTriangle(int a, int b, int c) {
  if (a == b && b == c) {
    print("Equilateral triangle");
  } else if (a == b || b == c || a == c) {
    print("Isosceles triangle");
  } else {
    print("Scalene triangle");
  }
}

// Question 4
void checkPrimeNumber(int number) {
  bool isPrime = true;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print("$number is prime number");
  } else {
    print("$number is not prime number");
  }
}

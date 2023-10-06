/*
* Questions OOP
* 
* 1- CemberDaire isimli bir sınıf oluşturun. Bu sınıfın yariCapAlan kurucusu olmalı. Çevre ve alanı hesaplayan fonksiyonları olmalı. (PI = 3.14) 
*
* 2- Öğrenci isimli bir sınıf  olsun. Bu sınıfta öğrenciID ve not değeri tutulmalı. ÖğrenciID değeri 0'dan küçük olamaz. Not değeri 0-100 arasında olmalı. 100 elemanlı bir listede id ve not değerleri rastgele oluşturulmalı. Bunları yazdıran fonksiyonu olmalı. Ortalama hesaplayan fonksiyonu olmalı.
*/
import 'dart:math';

void main(List<String> args) {
  _question1();
  _question2();
}

class CemberDaire {
  double? _yariCap;

  CemberDaire(double yariCap) {
    this._yariCap = yariCap;
  }

  double cevreHesapla() {
    return 2 * 3.14 * _yariCap!;
  }

  double alanHesapla() {
    return 3.14 * _yariCap! * _yariCap!;
  }
}

void _question1() {
  CemberDaire cemberDaire = CemberDaire(5);
  print("Çevre: ${cemberDaire.cevreHesapla()}");
  print("Alan: ${cemberDaire.alanHesapla()}");
}

class Student {
  int? _id;
  int? _grade;

  Student(int id, int grade) {
    this._id = id;
    this._grade = grade;
  }

  int get getId => _id!;

  set setId(int id) {
    if (id < 0) {
      throw Exception("ID 0'dan küçük olamaz");
    }
    _id = id;
  }

  int get getGrade => _grade!;

  set setGrade(int grade) {
    if (grade < 0 || grade > 100) {
      throw Exception("Not 0-100 arasında olmalı");
    }
    _grade = grade;
  }
}

void _question2() {
  List<Student> students = [];
  for (int i = 0; i < 100; i++) {
    students.add(Student(i, Random().nextInt(100)));
  }

  for (Student student in students) {
    print("ID: ${student.getId} - Not: ${student.getGrade}");
  }

  double average = 0;
  for (Student student in students) {
    average += student.getGrade;
  }
  average = average / students.length;
  print("Ortalama: $average");
}

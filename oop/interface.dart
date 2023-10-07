void main(List<String> args) {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.eat();
  dog.run();

  cat.eat();
  cat.run();
}

abstract class Animal {
  void eat();
  void run();
}

class Dog implements Animal {
  @override
  void eat() {
    print('Dog eat');
  }

  @override
  void run() {
    print('Dog run');
  }
}

class Cat implements Animal {
  @override
  void eat() {
    print('Cat eat');
  }

  @override
  void run() {
    print('Cat run');
  }
}

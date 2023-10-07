void main(List<String> args) {
  var user = User("John", "Doe", 30);
  var admin = AdminUser("Jade", "Exell", 35);
  var normalUser = NormalUser("Jack", "Sparrow", 37);

  // user.showInfos();
  // user.Login();

  // admin.showInfos();
  // admin.Login();
  // admin.showName;

  List<User> users = [];
  users.add(user);
  users.add(admin);
  users.add(normalUser);

  for (User user in users) {
    user.Login();
  }
}

class User {
  String? name;
  String? surname;
  int? age;

  User(this.name, this.surname, this.age);

  void showInfos() {
    print("Name: $name");
    print("Surname: $surname");
    print("Age: $age");
  }

  void get showName => print("Name: $name");

  void Login() {
    print("User logged in");
  }
}

class NormalUser extends User {
  NormalUser(String name, String surname, int age) : super(name, surname, age);

  @override
  void Login() {
    print("Normal user logged in");
  }
}

class AdminUser extends User {
  AdminUser(String name, String surname, int age) : super(name, surname, age);

  @override
  void Login() {
    print("Admin logged in");
  }
}

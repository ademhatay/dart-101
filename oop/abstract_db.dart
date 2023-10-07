void main(List<String> args) {
  MongoDb mongoDb = MongoDb();
  MySql mySql = MySql();

  mongoDb.add();
  mongoDb.delete();
  mongoDb.get();
  mongoDb.update();

  mySql.add();
  mySql.delete();
  mySql.get();
  mySql.update();
}

abstract class AbstractDB {
  void add();
  void delete();
  void update();
  void get();
}

class MongoDb implements AbstractDB {
  @override
  void add() {
    print("MongoDb add");
  }

  @override
  void delete() {
    print("MongoDb delete");
  }

  @override
  void get() {
    print("MongoDb get");
  }

  @override
  void update() {
    print("MongoDb update");
  }
}

class MySql implements AbstractDB {
  @override
  void add() {
    print("MySql add");
  }

  @override
  void delete() {
    print("MySql delete");
  }

  @override
  void get() {
    print("MySql get");
  }

  @override
  void update() {
    print("MySql update");
  }
}

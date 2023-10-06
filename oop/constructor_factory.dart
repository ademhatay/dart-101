class Car {
  String? brand;
  String? model;
  int? year;
  double price = 1000;

// constructor factory
  factory Car(String brand, String model, int year, double price) {
    return Car._internal(brand, model, year, price);
  }

  Car._internal(this.brand, this.model, this.year, this.price) {
    print("Constructor called.");
  }

  void start() {
    print('$brand $model started.');
  }

  void stop() {
    print('$brand $model stopped.');
  }

  void showInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Price: $price');
  }
}

void main(List<String> args) {
  // Create a Car object
  var car = Car('Toyota', 'Corolla', 2021, 200000);

  // Start the car
  car.start();

  // Stop the car
  car.stop();

  // Show car info
  car.showInfo();
}

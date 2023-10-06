class Customer {
  int? _id = 1;

  // Customer(this._id);

  Customer(int id) {
    checkCustomerId(id);
    this._id = id;
  }

  void checkCustomerId(int id) {
    if (_id! < 0) {
      throw Exception('ID cannot be negative');
    }
  }

  String get getId => 'Customer ID: $_id';

  void set setId(int id) {
    checkCustomerId(id);
    _id = id;
  }
}

import 'customer.dart';

void main(List<String> args) {
  Customer customer = Customer(12);
  customer.setId = 13;

  print(customer.getId);
}

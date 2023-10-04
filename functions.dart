void main(List<String> args) {
  calculateArea(2, 3);
  int result = calculateAreaWithReturn(2, 3);
  print("Area is $result");
}

void calculateArea(int length, int breadth) {
  print("Area is ${length * breadth}");
}

int calculateAreaWithReturn(int length, int breadth) {
  return length * breadth;
}

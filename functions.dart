void main(List<String> args) {
  calculateArea(2, 3);
  int result = calculateAreaWithReturn(2, 3);
  print("Area is $result");
  print("Area is ${calculateAreaWithReturn(2, 3)}");
  print("Area is ${optionalParameters(2)}");
  print("Area is ${optionalNamedParameters(2, breadth: 3)}");
  print("Area is ${defaultParameters(2)}");
}

void calculateArea(int length, int breadth) {
  print("Area is ${length * breadth}");
}

int calculateAreaWithReturn(int length, int breadth) {
  return length * breadth;
}

// arrow function
int calculateAreaWithArrow(int length, int breadth) => length * breadth;

// optional parameters
int optionalParameters(int length, [int? breadth]) {
  if (breadth == null) {
    return length * length;
  }
  return length * breadth;
}

// optional named parameters
int optionalNamedParameters(int length, {int? breadth}) {
  if (breadth == null) {
    return length * length;
  }
  return length * breadth;
}

// default parameters
int defaultParameters(int length, {int breadth = 2}) {
  return length * breadth;
}

class Student {
  final String name;
  final int age;
  final String department;

  const Student(
      {required this.name, required this.age, required this.department});
}

void main() {
  const student =
      Student(name: 'John Doe', age: 20, department: 'Computer Science');
  print(student.name);
  print(student.age);
  print(student.department);
}

// Constant Constructor
class Student {
  final String? name;
  final int? age;
  final int? rollNumber;

  const Student({this.name, this.age, this.rollNumber});
}

void main() {
  const Student student = Student(name: "John", age: 34, rollNumber: 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}

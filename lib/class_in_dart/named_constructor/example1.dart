class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Default constructor
  Student() {
    print("This is a default constructor");
  }

  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  Student student = Student();
}

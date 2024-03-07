// ignore_for_file: public_member_api_docs, sort_constructors_first
// Create getter and setter method
class Vehicle {
  late String _model;
  late int _year;

  Vehicle({String model = "honda", int year = 1998}) {
    _model = model;
    _year = year;
  }

  // Getter method
  String get model => _model;

  // Setter method
  set model(String model) => _model = model;

  // Getter method
  int get year => _year;

  // Setter method
  set year(int year) => _year = year;
}

// Constant Constructor With Named Parameters
class Car {
  final String? name;
  final String? model;
  final int? price;

  const Car({this.name, this.model, this.price});
}

void main() {
  const Car car = Car(name: "Honda", model: "Supra", price: 2500);
  print("Name: ${car.name}");
  print("Model: ${car.model}");
  print("Price: ${car.price}");
}

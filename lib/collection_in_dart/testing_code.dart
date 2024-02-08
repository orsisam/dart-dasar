void main() {
  List<int> myList = [10, 20, 30, 40, 50];
  var doubleList = myList.map((e) => e * 2);

  print("data type before mapped: ${myList.runtimeType}");
  print("Data type after mapped: ${doubleList.runtimeType}");
}

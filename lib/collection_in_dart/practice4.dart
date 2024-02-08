// 1. Create a list of names and print all names using list.
void printListname(List<String> names) {
  print("1. Print all names in list.");
  print("==============================================");
  print(names);
  print("");
}

// 2. Create set of fruits and print all using loop.
void printAllFruits() {
  print("2. Print set of fruits using loop.");
  print("==============================================");
  Set<String> fruits = {'Apple', 'Banana', 'Orange', 'Avocado'};
  for (String fruit in fruits) {
    print(fruit);
  }
  print("");
}

void main() {
  List<String> names = ['Muhammad', 'Isa', 'Ali', 'Abu Bakar'];
  printListname(names);

  printAllFruits();
}

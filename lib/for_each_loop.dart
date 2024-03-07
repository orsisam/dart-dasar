void main() {
  // Print each Item of List Using Foreach
  List<String> footballPlayers = ['Ronaldo', 'Messi', 'Neymar', 'Delpiero'];
  for (var names in footballPlayers) {
    print(names);
  }

  print("=============================================");

  // Print Each Total and Average of List
  List<int> numbers = [1, 2, 3, 4, 5];
  int total = 0;
  for (var element in numbers) {
    total += element;
  }
  print("Total is $total.");
  double avg = total / (numbers.length);
  print("Average is $avg.");

  print("=============================================");

  // For in Loop in Dart
  for (String player in footballPlayers) {
    print(player);
  }

  print("=============================================");

  //Finding Index Value of List
  footballPlayers.asMap().forEach((key, value) {
    print("$value key is $key");
  });

  print("=============================================");

  //Print Unicode Value of Each Character of String
  String name = "Orsisam";
  for (var codePoint in name.runes) {
    print("Unicode of ${String.fromCharCode(codePoint)} is $codePoint");
  }
}

// Providing Default Value On Positional Parameter

import 'dart:math';

void main() {
  List<int> randomList = List.generate(10, (_) => Random().nextInt(101));
  print(randomList);
}

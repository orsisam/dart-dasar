// 1. Check a number is odd or Evem

String oddOrEven(num number) {
  return (number % 2 == 0) ? 'even' : 'odd';
}

bool isChar(String character) {
  return (character.length == 1) ? true : false;
}

// 2. Check wehther a character is vowel or consonant
String vowelOrConsonant(String char) {
  List<String> vowels = ['a', 'i', 'u', 'e', 'o'];
  // make sure the string is a character
  if (isChar(char)) {
    for (String vowel in vowels) {
      if (char != vowel) {
        return 'consonant';
      } else {
        return 'vowel';
      }
    }
  }
  return 'Error, You did not enter a character.';
}

// 3. Check whether a number is positive, negative or zero
String negativeOrPOsitive(int number) {
  if (number < 0) {
    return 'negative';
  }
  if (number > 0) {
    return 'positive';
  }

  return 'zero';
}

// 4. Print name n times
void printNamenTimes(String name) {
  for (int i = 1; i <= 100; i++) {
    print('name');
  }
}

// 5. Sum of the Natural Number
double sumOfNaturalNumber(int number) {
  return number * (number + 1) / 2;
}

// 6. Multiplication table of 5
void multiplicationOf5() {
  for (int i = 1; i <= 10; i++) {
    print("$i x 5 = ${i * 5}");
  }
}

// 7. Multiplication 1-9
void multiplication19() {
  print("==============================");
  print("\t Multiplication 1-9 \t");
  print("==============================");

  for (int i = 1; i < 10; i++) {
    print("-----------------------------------");

    for (int j = 1; j <= 10; j++) {
      print("$j x $i = ${j * i}");
    }
  }
  print("==============================");
}

void main() {
  //
}

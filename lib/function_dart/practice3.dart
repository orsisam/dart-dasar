// ignore_for_file: unused_local_variable

import 'dart:io';
import 'dart:math';

// 1. Print name
void printName({required String name}) => print("Your name is $name.");

// 2. print even number between interval
void printEventNumbers({required int interval}) {
  int count = 0;
  List<int> listOfEven = [];
  for (int i = 1; i <= interval; i++) {
    if (i % 2 == 0) {
      // print(i);
      listOfEven.add(i);
      count++;
    }
  }
  print(listOfEven);
  print("There are $count even number between 1 and $interval interval.");
}

// 3. Greet function to print greeting with name parameter
void greetings({required String name}) => print("Hello Mr./Ms. $name.");

// 4. Generate random password
String generateRandomPassword({required int length}) {
  var random = Random();
  const String _chars =
      "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#\$%^&*()`~-_+=";
  String randomPassword =
      List.generate(length, (index) => _chars[random.nextInt(_chars.length)])
          .join();

  return randomPassword;
}

// 5. Find the area of Circle
double circleArea({required int r}) => (pi * pow(r, 2));

// 6. Reverse String
String reverseWord({required String word}) {
  List reversedWord = [];
  for (int i = word.length - 1; i >= 0; i--) {
    reversedWord.add(word[i]);
  }

  return reversedWord.join();
}

// 7. calculate power of a certain number
num calcPower({required double number, required int power}) =>
    pow(number, power);

// 8. sum of 2 numbers
num sumOf(num num1, num num2) => num1 + num2;

// 9. get Max Number from three given
int getMax(int a, int b, int c) {
  int maxNum = max(a, b);
  maxNum = max(maxNum, c);

  return maxNum;
}

// 10. function isEven returnded True if the parameter number is even and False
//     for reversed
String isEven({required int number}) => (number % 2 == 0) ? "True" : "False";

// 11. Create createUser function that takes three arguments name, age, and isActive
//     isActive has default value True.
Map<String, String> createUser(
    {required String name, required int age, bool isActive = true}) {
  return {
    'name': name,
    'age': age.toString(),
    'isActive': (isActive) ? 'Yes' : 'No'
  };
}

// 12. calculate Rectangle with default value of arguments
num calculateArea([num length = 1, num width = 1]) => length * width;

void main() {
  print("============================");
  print("1. Print your name");
  print("Please enter your name:");
  String? myname = stdin.readLineSync();
  printName(name: myname!);
  print("");

  print("============================");
  print("2. Print even numbers between intervals");
  print("Enter a number for interval:");
  int? interval = int.parse(stdin.readLineSync()!);
  printEventNumbers(interval: interval);
  print("");

  print("============================");
  print("3. Greetings");
  greetings(name: myname);
  print("");

  print("============================");
  print("4. Generate random password");
  print("Enter the length of password:");
  int? passwordLength = int.parse(stdin.readLineSync()!);
  print("Your password is: ${generateRandomPassword(length: passwordLength)}");
  print("");

  print("============================");
  print("5. Circle Area");
  print("Please enter a circle radious");
  int? radious = int.parse(stdin.readLineSync()!);
  double circle = circleArea(r: radious);
  print("The are of circle that has $radious radious is $circle.");
  print("");

  print("============================");
  print("6. Reversed String");
  print("Please enter your word:");
  String? words = stdin.readLineSync();
  print("the reversed from $words is ${reverseWord(word: words!)}");
  print("");

  print("============================");
  print("7. Calculate power of certain number");
  print("Please enter the number: ");
  double? number = double.parse(stdin.readLineSync()!);
  print("Please enter number of power !> 1 :");
  int? power = 0;
  String? numInput;
  // int inputLength = 0;
  do {
    numInput = stdin.readLineSync();
    power = int.parse(numInput!);
  } while (numInput.length > 1);
  num result = calcPower(number: number, power: power);
  print("$number^$power = $result");
  print("");

  print("============================");
  print("8. Sum of two numbers.");
  print("Enter first number: ");
  num? firstNumber = num.parse(stdin.readLineSync()!);
  print("Enter second number:");
  num? secondNumber = num.parse(stdin.readLineSync()!);
  print("$firstNumber + $secondNumber = ${sumOf(firstNumber, secondNumber)}");
  print("");

  print("============================");
  print("9. Max of three integer numbers");
  print("Enter the firs number:");
  int? number1 = int.parse(stdin.readLineSync()!);
  print("Enter the second number:");
  int? number2 = int.parse(stdin.readLineSync()!);
  print("Enter the third number:");
  int? number3 = int.parse(stdin.readLineSync()!);
  print(
      "The largest number from $number1, $number2, and $number3 is ${getMax(number1, number2, number3)}");
  print("");

  print("============================");
  print("10. Check number is even or not");
  print("Enter a number to be checked:");
  int? numChecked = int.parse(stdin.readLineSync()!);
  print("Is your number is even? => ${isEven(number: numChecked)}");
  print("");

  print("============================");
  print("11. Create user with option default value");
  print("Enter your name:");
  String? name = stdin.readLineSync();
  print("Enter your age:");
  int? age = int.parse(stdin.readLineSync()!);
  var user = createUser(name: name!, age: age);
  print(user);

  exit(0);
}

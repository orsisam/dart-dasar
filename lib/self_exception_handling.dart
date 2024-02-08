// class MarkException implements Exception {
//   String errorMessage() {
//     return 'Mark cannot be negative.';
//   }
// }

// void main() {
//   try {
//     checkMarks(-20);
//   } catch (e) {
//     print(e.toString());
//   }
// }

// void checkMarks(int marks) {
//   if (marks < 0) throw MarkException().errorMessage();
// }

import 'dart:math';

class NegativeSquareRootException implements Exception {
  @override
  String toString() {
    return 'Square root of negative number is not allowed here.';
  }
}

num squareRoot(int i) {
  if (i < 0) {
    throw NegativeSquareRootException();
  } else {
    return sqrt(i);
  }
}

void main() {
  try {
    var result = squareRoot(-4);

    print("result: $result");
  } on NegativeSquareRootException catch (e) {
    print("Oops, Negative Number: $e");
  } catch (e) {
    print(e);
  } finally {
    print('Job Completed!');
  }
}

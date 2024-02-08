import 'dart:io';
// import 'dart:async';

void main() {
  // Get current root project directory
  String currDir = Directory.current.path;
  // print(currDir.runtimeType);

  // Open file test.txt
  File fileTest = File('lib/file_handling/test.txt');
  // Read file
  String contents = fileTest.readAsStringSync();
  print("Isi file test.txt");
  print("=======================");
  print(contents);

  // Get file information
  // get file location
  print("");
  print("Informasi File test.txt");
  print("=======================");
  print("File path: ${fileTest.path}");
  // get absolute path
  print("File absolute path: ${fileTest.absolute.path}");
  // get file size
  print("File size: ${fileTest.lengthSync()} bytes");
  // get last modified time
  print("Last modified: ${fileTest.lastModifiedSync()}");

  // Read file CSV
  // open file csv
  File csvFile = File('lib/file_handling/test.csv');
  // Reading file
  String csvContents = csvFile.readAsStringSync();
  // Split file using new line
  List<String> lines = csvContents.split('\n');
  // print file
  print("");
  print("Print CSV File");
  print("==========================");
  for (var line in lines) {
    print(line);
  }
}

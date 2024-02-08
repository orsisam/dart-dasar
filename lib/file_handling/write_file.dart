import 'dart:io';

bool isExist(String filePath) {
  return File(filePath).existsSync();
}

Future<void> createFile(String filePath) async {
  await File(filePath).create(recursive: true);
}

File openFile(String filePath) {
  return File(filePath);
}

void writeCSV(String csvFilePath) {
  if (!isExist(csvFilePath)) {
    createFile(csvFilePath);
  }

  File csvFile = openFile(csvFilePath);
  csvFile.writeAsStringSync("Name,Phone\n");
  bool close = false;
  int iter = 0;
  do {
    stdout.write("Enter name of student ${iter + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter phone of student ${iter + 1}: ");
    String? phone = stdin.readLineSync();

    csvFile.writeAsStringSync("$name,$phone\n", mode: FileMode.append);
    print("Student $name successfully added");

    iter++;

    stdout.write("Are you finish?(y/n)");
    String? yesno = stdin.readLineSync();

    close = (yesno == 'y') ? true : false;
  } while (!close);
}

void main() {
  const String fileName = "test_write.txt";
  const String strPath = "lib/file_handling";
  const String filePath = "$strPath/$fileName";

  if (!isExist(filePath)) {
    createFile(filePath);
  }

  File testWrite = openFile(filePath);
  testWrite.writeAsStringSync("Welcome, this is the first text inputed");
  print("File writen..");
  print("current value of file is:");
  print(testWrite.readAsStringSync());

  // File testWrite = openFile(filePath);
  print("Changing first line...");
  testWrite.writeAsStringSync("Welcome, this test is rewriten by orsisam");
  print("File rewriten");
  print("Current text is:");
  print(testWrite.readAsStringSync());
  print("");

  print("Adding new line on $fileName...");
  testWrite.writeAsStringSync("\nThis is a new content.",
      mode: FileMode.append);
  print("Success adding new line in file $fileName.");
  print("Current value in $fileName is:");
  print(testWrite.readAsStringSync());
  print("-----------------------------");
  print("");

  print("Write CSV File");
  print("=============================");
  String csvFilePath = "$strPath/students.csv";
  writeCSV(csvFilePath);
  print("Congratulation!! CSV file successfully created.");
}

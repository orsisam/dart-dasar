void main() {
  try {
    checkAccount(-10);
  } catch (e) {
    print('The account cannot be nagtive');
  }

  print("Hello I am running after exception");
}

void checkAccount(int amount) {
  if (amount < 0) {
    throw FormatException();
  }
}

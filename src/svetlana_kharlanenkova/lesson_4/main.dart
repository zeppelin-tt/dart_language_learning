void main() {
  print(isCorrect(3));
  print(isCorrect(7));
  print(getDouble(0));
  print(getDouble(20));
  print(getDouble2(2));
  print(getDouble(10));

}

String isCorrect(int a) {
  if (a > 0 && a < 5) {
    return 'Correct';
  }
  return 'Incorrect';
}

double getDouble(int a) {
  if (a == 0 || a == 2) {
    return (a + 7).toDouble();
  }
  return a / 10;
}

double getDouble2(int a) {
  return a == 0 || a == 2
      ? (a + 7).toDouble()
      : a / 10;
}

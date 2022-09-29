void main() {
  int n = 62;
  sumNumbers(n);
}

void sumNumbers(int n) {
  int a; int b; int c;
  a = n ~/ 10;
  b = n - a * 10;
  c = a + b;
  print('сумма цифр: $c');
}

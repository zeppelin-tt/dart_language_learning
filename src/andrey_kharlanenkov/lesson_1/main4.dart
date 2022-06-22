void main () {
  int n = 635;
  n = sumNumbers(n);
  print('сумма цифр: $n');
}

int sumNumbers (int n) {

  final int a; final int b; final int c; int d;
  a = n ~/100; n = n - a * 100;
  b = n ~/10; n = n - b * 10;
  c = n;
  d = a + b + c;
  return d;
}
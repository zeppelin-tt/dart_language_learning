void main () {
  int n = 635;
  n = summaChisel(n);
  print('сумма цифр: $n');
}

int summaChisel (int n2) {

  int a; int b; int c; int d;
  a = n2 ~/100; n2 = n2 - a * 100;
  b = n2 ~/10; n2 = n2 - b * 10;
  c = n2;
  d = a + b + c;
  return d;
}
void main () {
  int n = 62;
  summaChisel(n);
}

void summaChisel (int n2) {
  int a; int b; int c;
  a = n2 ~/10;
  b = n2 - a * 10;
  c = a + b;
  print ('сумма цифр: $c');
}


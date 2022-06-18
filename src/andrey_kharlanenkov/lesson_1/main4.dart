void main () {
  int n=635;
  int a; int b; int c; int d;
  a = n ~/100; n = n - a * 100;
  b = n ~/10; n = n - b * 10;
  c = n;

  d = a + b + c;

  print ("сумма цифр: $d");
}
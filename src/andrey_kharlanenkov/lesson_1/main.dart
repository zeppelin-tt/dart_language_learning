void main () {
  int q = 21;
  int w = 8;
  delenie (q, w);
}

void delenie (int q2, int w2) {
  int a; int b;
  a = q2 ~/ w2;
  b = q2 - a * w2;
  print ('целая часть: $a');
  print ('остаток: $b');

  b = q2 % w2;
  print ('остаток ещё раз: $b');
}


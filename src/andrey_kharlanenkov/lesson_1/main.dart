void main() {
  int q = 21;
  int w = 8;
  divisionResult(q, w);
}

void divisionResult(int q, int w) {
  final int a;
  int b;
  a = q ~/ w;
  b = q - a * w;
  print('целая часть: $a');
  print('остаток: $b');
  b = q % w;
  print('остаток другим способом: $b');
}

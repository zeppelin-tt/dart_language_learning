void main() {
  double n = 10.459;
  round(n);
}

void round(double n) {
  final int i; final double z;
  i = n.truncate();
  print('целая часть = $i');
  z = n - i;
  print('дробная часть = $z');
}

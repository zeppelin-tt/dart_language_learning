void main() {
  double n = 10.459;
  round (n);
}

void round (double n2) {
  int i; double z;
  i = n2.truncate();
  print ('целая часть = $i');

  z = n2 - i;
  print('дробная часть = $z');

}
void main() {
  //job 1
  division(21, 8);
  //job 2
  summ(43);
  //job 3
  rounding(27.21);
  //job 4
  summ2(108);
}
//job 1
void division(int q, int w){
  int res1 = q ~/ w;
  int res2 = q % w;
  print('Результат деления: $res1, остаток: $res2');
}
// job 2
void summ (int n){
  int a = n ~/ 10;
  int b = n % 10;
  int c = a + b;
  print('Сумма чисел двухначного числа $n равняется $c');
}
//job 3
void rounding(double n) {
  int num = n.round();
  print('Ближайшее целое число от $n составит $num');
}
// job 2
void summ2 (int n) {
  int a = n ~/ 100;
  int b = n - 108;
  int c = n % 100;
  int d = a + b + c;
  print('Сумма чисел трёхзначного числа $n равняется $d');
}

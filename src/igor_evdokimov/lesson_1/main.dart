void main() {
  print('Задание 1');
  print(division(45, 4));
  print('Задание 2');
  print (checkN(68));
  print(sum(68));
  print(sum1(68));
  print('Задание 3');
  double n2 = 11.5;
  print('если округлить $n2 то получится ${n2.round()}');
  print('Задание 4');
  print(sum2(777));
  print(sum3(777));
}

String division(int q, int w) {
  return '$q разделить на $w будет ${q ~/ w} в остатке ${q % w}';
}

String checkN (int n){
  bool boolean1 = n < 100;
  bool boolean2 = n > 9;
  return 'Число $n < 100? $boolean1, Число $n > 9? $boolean2';
}

String sum(int n) {
  return 'Сумма цифр друзначного числа $n равна ${(n ~/ 10) + (n - (n ~/ 10) * 10)}';
}

String sum1(int n) {
  return 'Сумма цифр друзначного числа $n равна ${n - (n ~/ 10) * 9}';
}

String sum2(int a) {
  int a1 = a ~/ 100;
  int a2 = a ~/ 10 - (a ~/ 100) * 10;
  int a3 = a - (a ~/ 100) * 100 - (a ~/ 10 - (a ~/ 100) * 10) * 10;
  return 'Сумма цифр трехзначного числа $a равна ${a1 + a2 + a3}';
}

String sum3(int a) {
  return 'Сумма цифр трехзначного числа $a равна ${a - 9 * (a ~/ 100 + a ~/ 10)}';
}
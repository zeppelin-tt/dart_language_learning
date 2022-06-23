import 'dart:math';
import '../utils.dart';

void main() {
  final r = Random();

  final t1Q = r.nextInt(1000);
  final t1W = r.nextInt(100) + 1;
  task1(t1Q, t1W);
  final t2N = r.nextInt(89) + 10;
  task2(t2N);
  final t3N = r.nextDouble() * 100;
  task3(t3N);
  final t4N = r.nextInt(899) + 100;
  task4(t4N);
}

void task1(int q, int w) {
  print('$q ~/ $w = ${integerDivision(q, w)}');
}

void task2(int n) {
  print('Сумма цифр числа $n = ${sumOfDigits(n)}');
}

void task3(double n) {
  print('Округленное $n = ${n.round()}');
}

void task4(int n) {
  print('Сумма цифр числа $n = ${sumOfDigits(n)}');
}

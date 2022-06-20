import 'dart:math';
import '../utils.dart';

void main() {
  final r = Random();
  final t1Q = r.nextInt(1000);
  final t1W = r.nextInt(100) + 1;
  final t2N = r.nextInt(89) + 10;
  final t3N = r.nextDouble() * 100;
  final t4N = r.nextInt(899) + 100;

  task1(t1Q, t1W);
  task2(t2N);
  task3(t3N);
  task4(t4N);
}

void task1(int q, int w) {
  print('$q ~/ $w = ${integerDivision(q, w)}');
}

void task2(int n) {
  print('сумма цифр числа $n = ${sumOfDigits(n)}');
}

void task3(double n) {
  print('Округленное $n = ${n.round()}');
}

void task4(int n) {
  print('сумма цифр числа $n = ${sumOfDigits(n)}');
}
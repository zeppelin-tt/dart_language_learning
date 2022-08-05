//Домашнее задание 1.3
import 'dart:math';

void main() {
  var q = Random().nextDouble()*10;
  print('Рандомное вещественное число с ненулевой дробной частью - $q');
  double w = q.roundToDouble();
  print('Полученное округлённое число - $w');
}

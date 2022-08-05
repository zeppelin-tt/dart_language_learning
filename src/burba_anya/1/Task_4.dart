// Домашнее задание 1.4
import 'dart:math';

void main() {
  print(resultFunc(''));
}

String resultFunc(String summa) {
  int sum = 0;
  var q = Random().nextInt(989) + 10;
  print('Рандомное трёхзначное число - $q');
  while (q>0) {
    sum = sum + (q % 10); 
    q = (q ~/ 10);
  }
  
  return 'Сумма цифр полученного числа - $sum';
}

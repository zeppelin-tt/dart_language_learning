// Домашнее задание 1.2
import 'dart:math';

void main() {
  print(resultFunc(''));
}

String resultFunc(String summa) {
  int sum = 0;
  var q = Random().nextInt(89) + 10;
  print('Рандомное двузначное число - $q');
  sum = (q ~/ 10) + (q % 10); 
  
  return 'Сумма цифр полученного числа - $sum';
}

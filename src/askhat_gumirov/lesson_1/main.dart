void main() {
  //Задание №1

  print('результат деления равен ${division(21, 8)}');

// универсальная функция для задания №2 и №4
  const int nOne = 624;

  print('Сумма цифр числа $nOne = ${summary(nOne)}');

//Задание №3
  const double nTwo = 15.4;

 print ('Округленное значение числа $nTwo = ${roundFunction(nTwo)}');
}

double division(int first, int second) {
  final double result = first / second;

  return result;
}

int summary(int value) {
  int c = 0;
  final List<String> listOfInt = value.toString().split('');
  for (final element in listOfInt) {
    c += int.parse(element);
  }

  return c;
}

int roundFunction(double value) {

  return value.round();
}

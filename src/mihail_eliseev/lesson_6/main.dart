import 'dart:io';
import 'dart:math';

void main() {
  int n = 123456;
  int rev = 0;
  int dig = 0;
  print('Число $n');
  while (n > 0) {
    dig = n % 10;
    rev = rev * 10 + dig;
    n = n ~/ 10;
  }
  print('Число в обратном порядке $rev');
  print('');

  final random = Random();

  final list1 = List.generate(15, (item) => 5 + random.nextInt(55));
  print(list1);
  final getBubbleSort = bubbleSort(list1);
  final min = list1.first;
  final max = list1.last;
  final mid = list1.reduce((value, element) => value + element) / list1.length;
  print('Минимальное значение $min, Максимальное значение $max, Среднее значение $mid');
  print('Сортировка пузырьком $getBubbleSort');

  const number = 500;
  primeNumbers(number);

  const a = 5;
  const b = -6;
  print('');
  print('Даны числа $a, $b');
  print('Ряд чисел:');
  recursFunc(a, b);
}

List bubbleSort(List list1) {
  final int listLength = list1.length;
  for (int i = 0; i < listLength - 1; i++) {
    for (int j = 0; j < listLength - 1 - i; j++) {
      if (list1[j + 1] < list1[j]) {
        final temp = list1[j];
        list1[j] = list1[j + 1];
        list1[j + 1] = temp;
      }
    }
  }
  return list1;
}

void primeNumbers(int number) {

  for (int i = 2; i <= number; i++) {
    bool primeAvailable = true;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        primeAvailable = false;
        break;
      }
      if (primeAvailable == true) {
        stdout.write('$i ');
        break;
      }
    }
  }
}

void recursFunc(int a, int b) {
  if (a == b) {
    stdout.write(' $a');
    return;
  }
  if (a < b) {
    stdout.write(' ${a++}');
    recursFunc(a, b);
  }
  if (a > b) {
    stdout.write(' ${a--}');
    recursFunc(a, b);
  }
}

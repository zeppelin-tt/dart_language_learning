import 'dart:math';

import '../list_utils.dart';

void main() {
  final rnd = Random();

  final rndInt = rnd.nextInt(1000000000);
  print('$rndInt в обратном порядке - ${revertNumber(rndInt)}');

  final rndList = generateRandomIntList(15, minValue: 5, maxValue: 60);
  print('Рандомный лист от 5 до 60 - $rndList');
  print('Минимальное значение - ${rndList.reduce(min)}');
  print('Максимальное значение - ${rndList.reduce(max)}');
  print('Среднее значение - ${rndList.cast<num>().avg()}');
  print('Пузырьковая сортировка - ${bubbleSort(rndList)}');

  const int n = 500;
  print('Простые числа до $n - ${getPrimeNumbers(n)}');

  final a = rnd.nextInt(100);
  final b = rnd.nextInt(100);
  print('числа от $a до $b - ${getNumbersRange(a, b)}');
}

int revertNumber(int n) {
  int result = 0;
  int tmp = n;
  while (tmp > 0) {
    result = result * 10 + tmp % 10;
    tmp = tmp ~/ 10;
  }
  return result;
}

List<int> getPrimeNumbers(int above) {
  final List<int> result;
  if (above >= 2) {
    result = [2];
  } else {
    return [];
  }
  bool isPrime;
  for (int i = 3; i <= above; i++) {
    isPrime = true;
    for (int j = 0; j < result.length; j++) {
      if (sqrt(i) < result[j]) {
        break;
      }
      if (i % result[j] == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      result.add(i);
    }
  }
  return result;
}

Iterable<int> getNumbersRange(int a, int b) sync* {
  yield a;
  if (a < b) {
    yield* getNumbersRange(++a, b);
  } else
  if (a > b) {
    yield* getNumbersRange(--a, b);
  }
}
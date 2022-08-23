// 1. Для данного натурального числа n напечатайте число,
//    записанное теми же десятичными цифрами, но в обратном порядке.
//    Задание выполнить через цикл.

import 'dart:math';

void main() {
  const int num = 123;

  final List<String> numStr = num.toString().split('');
  final result = StringBuffer();

  for (int i = numStr.length - 1; i > -1; i--) {
    result.write(numStr[i]);
  }

  print(result.toString());

// 2. а) Создайте лист из 15 случайных чисел в диапазоне от 5 до 60;
// Для генерации случайного числа использовать Random() из пакета math.
// Не следует каждый раз создавать экземляр класса Random()

  final rnd = Random();
  final list = List.generate(15, (_) => 5 + rnd.nextInt(60 - 5));

  print(list);

// b) Создайте формулы для получения максимального, минимального и среднего значения.

  print(max(list).round());
  print(min(list));
  print(avg(list));

// d) Реализуйте "сортировку пузырьком" данного листа.

  print(bubbleSort(list.toList()));

// 3. Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 500].
// Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.

  for (int n = 2; n <= 500; n++) {
    bool isPrime = true;
    final double squareRoot = sqrt(n) + 2;
    int j = 2;
    while (j <= squareRoot && isPrime) {
      if (n % j == 0) isPrime = false;
      j++;
    }
    if (isPrime) {
      print(n);
    }
  }

// 4. Даны два целых числа A и В. Используюя рекурсию, выведите все числа от A до B включительно,
//    в порядке возрастания, если A < B, или в порядке убывания в противном случае.

  printIntegersInOrder(10, 20);
  printIntegersInOrder(77, 55);
}

// b) Создайте формулы для получения максимального, минимального и среднего значения.

int max(List<int> list) {
  return list.fold(list.first, (max, e) => e > max ? e : max);
}

int min(List<int> list) {
  return list.fold(list.first, (min, e) => e < min ? e : min);
}

double avg(List<int> list) {
  return list.fold(0, (avg, e) => avg + e / list.length);
}

// d) Реализуйте "сортировку пузырьком" данного листа.

List<int> bubbleSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {
        final int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
  }
  return list;
}

// 4. Даны два целых числа A и В. Используюя рекурсию, выведите все числа от A до B включительно,
//    в порядке возрастания, если A < B, или в порядке убывания в противном случае.

void printIntegersInOrder(int a, int b) {
  if (a < b) {
    printIntegersInOrder(a, b - 1);
    print(b);
  } else if (a > b) {
    print(a);
    printIntegersInOrder(a - 1, b);
  } else {
    print(b);
  }
}

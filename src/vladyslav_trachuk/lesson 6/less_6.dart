import 'dart:core';
import 'dart:math';

// 1. Для данного натурального числа n напечатайте число,
// записанное теми же десятичными цифрами, но в обратном порядке.
// Задание выполнить через цикл.
int reverse(int number) {
  int result = 0;
  int temp = number;
  while (temp > 0) {
    result = result * 10 + temp % 10;
    temp = temp ~/ 10;
  }
  return result;
}

// 2. а) Создайте лист из 15 случайных чисел в диапазоне от 5 до 60;
// Для генерации случайного числа использовать Random() из пакета math.
// Не следует каждый раз создавать экземляр класса Random()
// b) Создайте формулы для получения максимального, минимального и среднего значения.
// c) Прочитайте про различные виды сортировок.
// d) Реализуйте "сортировку пузырьком" данного листа.

int generateNewInt(int min, int max) {
  return min + Random().nextInt(max - min);
}

void task2() {
  final list = [];
  for (list.length = 0; list.length < 15;) {
    final randomInt = generateNewInt(5, 60);
    list.add(randomInt);
  }
  print('Задание 2 а) $list');
  //Не знаю правильно ли так, но я попробовал
  list.sort();
  print('Задание 2 b) минимальное значение ${list.first}');
  print('Задание 2 b) минимальное значение ${list.last}');
  final max = list.reduce((value, element) => value > element ? value : element);
  print('Задание 2 b) максимальное значение $max');
  final min = list.reduce((value, element) => value < element ? value : element);
  print('Задание 2 b) минимальное значение $min');
  final average = list.reduce((value, element) => value + element / list.length).round();
  print('Задание 2 b) среднее значение в списке $average');
}

void bubbleSort() {
  final listSort = [];
  var i = 0;
  for (int b = 0; b < 10; b++) {
    final newInt = Random().nextInt(50); //Создали список рандомных интов
    listSort.add(newInt);
  }
  print('Задание 2 d) До сортировки пузырьковым методом $listSort');
  for (int o = 0; o < listSort.length - 1; o++) {
    for (i = 0; i < listSort.length - 1; i++) {
      if (listSort[i] > listSort[i + 1]) {
        final save = listSort[i];
        listSort[i] = listSort[i + 1];
        listSort[i + 1] = save;
      }
    }
  }
  print('Задание 2 d) После сортировки пузырьковым методом $listSort');
}

// 3. Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 500].
// Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.
void task3() {
  for (int q = 2; q <= 500; q++) {
    bool isSimple = false;
    for (int i = 2; i <= q; i++) {
      if (q % i == 0 && i != q) {
        isSimple = true;
      }
    }
    if (!isSimple) {}
    print('Задание 3 простые числа от 2 до 500 $q');
  }
}

// 4. Даны два целых числа A и В. Используюя рекурсию, выведите все числа от A до B включительно,
// в порядке возрастания, если A < B, или в порядке убывания в противном случае.
void recursion(int a, int b) {
  final list = [];
  if (a < b) {
    recursion(a, b - 1);
    list.add(b);
  } else if (a > b) {
    list.add(a);
    recursion(a - 1, b);
  } else {
    list.add(b);
  }
  final listString = list.map((element) => element).toList().join();
  print('Задание 4 выводим числа от большего к меньшему и наоборот $listString');
}

void main() {
  const n = 12345;
  print('Задание 1 ${n.toString().split('').reversed.join()}');
  print('Задание 1 ${reverse(987654321)}');
  task2();
  bubbleSort();
  task3();
  recursion(7, 5);
}

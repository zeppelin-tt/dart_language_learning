// 1. Для данного натурального числа n напечатайте число,
// записанное теми же десятичными цифрами, но в обратном порядке.
// Задание выполнить через цикл.

import 'dart:math';

void main() {
  const int n = 12345678;
  final List<String> stringList = n.toString().split('');
  final List<int> intList = stringList.map(int.parse).toList();
  final List<int> tempList = [];
  final String tempString;
  final int newN;

  for (int i = 0; i <= intList.length - 1; ++i) {
    tempList.add(intList.length - i);
  }
  //2. а) Создайте лист из 15 случайных чисел в диапазоне от 5 до 60;
  // Для генерации случайного числа использовать Random() из пакета math.
  // Не следует каждый раз создавать экземляр класса Random()
  // b) Создайте формулы для получения максимального, минимального и среднего значения.
  // c) Прочитайте про различные виды сортировок.
  // https://academy.yandex.ru/posts/osnovnye-vidy-sortirovok-i-primery-ikh-realizatsii
  // d) Реализуйте "сортировку пузырьком" данного листа.
  tempString = tempList.map((e) => e.toString()).join();
  newN = int.parse(tempString);
  print(newN);

  final randomList = Random();
  final List<int> list = List.generate(15, (index) => 5 + randomList.nextInt(51)).toList();
  print('Рандомный список, от 5 до 55 - $list');

  var minNumber = list[0];
  var maxNumber = list[0];

  for (int i = 0; i <= list.length - 1; i++) {
    if (list[i] < minNumber) {
      minNumber = list[i];
    }
    if (list[i] > maxNumber) {
      maxNumber = list[i];
    }
  }
  print('Минимальное число - $minNumber, максимально - $maxNumber');

  final int averageNumber;
  int temp = 0;
  for (int i = 0; i <= list.length - 1; i++) {
    temp += list[i];
  }
  averageNumber = (temp / list.length).round();
  print('Среднее значение = $averageNumber');

  List<int> babbleSort(List<int> list) {
    for (int i = 0; i < list.length - 1; i++) {
      for (int j = 0; j < list.length - 1 - 1; j++) {
        if (list[j] > list[j + 1]) {
          final int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    return list;
  }

  final List<int> sortList = babbleSort(list);
  print(sortList);

  // 3. Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 500].
  // Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.
  // 4. Даны два целых числа A и В. Используюя рекурсию, выведите все числа от A до B включительно,
  // в порядке возрастания, если A < B, или в порядке убывания в противном случае.


}

//

//

//
//
// Не успел или забыл рассказать, изучите самим:
// 1. Сортировки. Необходимо для задачи 2.
// 2. Посмотреть и пощупать стандартные методы классов String, bool, int, double
// 3. Прочитайте про деревья https://javarush.ru/groups/posts/3111-strukturih-dannihkh-dvoichnoe-derevo-v-java
//    Для чего они нужны и как прозходить элементы дерева при помощи рекурсии.

import 'dart:math';

void main() {
  print(reversedNum(123));
  // 2. а) Создайте лист из 15 случайных чисел в диапазоне от 5 до 60;
//       Для генерации случайного числа использовать Random() из пакета math.
//       Не следует каждый раз создавать экземляр класса Random()
  final list = List.generate(15, (index) => Random().nextInt(60) + 5);
  print(list);
  //    b) Создайте формулы для получения максимального, минимального и среднего значения.
  var largestValue = list[0];
  var smallestValue = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] > largestValue) {
      largestValue = list[i];
    }
    if (list[i] < smallestValue) {
      smallestValue = list[i];
    }
  }
  print('меньшее число $smallestValue');
  print('большее число $largestValue');
  final list2 = bubbleSort(list);
  print(list2);
  checkPrime(500);

  final int n = Random().nextInt(498) + 2;
  for (int i = 2; i <= n; i++) {
    checkPrime(i);
    recursionFunc(10, 1);
  }

//    c) Прочитайте про различные виды сортировок.
//       https://academy.yandex.ru/posts/osnovnye-vidy-sortirovok-i-primery-ikh-realizatsii
}
//1. Для данного натурального числа n напечатайте число,
//    записанное теми же десятичными цифрами, но в обратном порядке.
//    Задание выполнить через цикл.
//

int reversedNum(int input) {
  int revNum = 0;
  while (input != 0) {
    revNum = revNum * 10 + input % 10;
    input = input ~/ 10;
  }
  return revNum;
}

//    d) Реализуйте "сортировку пузырьком" данного листа.
List<int> bubbleSort(List<int> list) {
  final lengthOfList = list.length;
  for (int i = 0; i < lengthOfList - 1; i++) {
    for (int j = 0; j < lengthOfList - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        final temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

// 3. Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 500].
//    Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.
void checkPrime(int num) {
  int flag = 0;
  final int m = num ~/ 2;
  for (int i = 2; i <= m; i++) {
    if (num % i == 0) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    print('$num');
  }
}
// 4. Даны два целых числа A и В. Используюя рекурсию, выведите все числа от A до B включительно,
//    в порядке возрастания, если A < B, или в порядке убывания в противном случае.
void recursionFunc(int a, int b) {
  if (a == b) {
    print(a);
    return;
  }
  if (a < b) {
    print(a);
    a++;
    recursionFunc(a, b);
  }
  if (a > b) {
    print(a);
    a--;
    recursionFunc(a, b);
  }
}

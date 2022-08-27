import 'dart:math';

void main() {
  // 1. Для данного натурального числа n напечатайте число,
  // записанное теми же десятичными цифрами, но в обратном порядке.
  // Задание выполнить через цикл.
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

  // d) Реализуйте "сортировку пузырьком" данного листа.
  List<int> babbleSort(List<int> list) {
    for (int i = 0; i <= list.length - 1; i++) {
      for (int j = 0; j < list.length - i - 1; j++) {
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
  print('Сортировка пузырьком - $sortList');

  // 3. Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 500].
  // Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.

  final findPrimeList = List.generate(15, (index) => randomList.nextInt(498) + 2);
  print('Просто набор из 15 чисел от 2 до 500 - $findPrimeList');
  final List<int> primeNumbers = [];

  for (int n = 0; n <= findPrimeList.length - 1; n++) {
    bool isPrime = true;
    final double squareRoot = sqrt(findPrimeList[n]) + 2;
    int j = 2;
    while (j <= squareRoot && isPrime) {
      if (findPrimeList[n] % j == 0) isPrime = false;
      j++;
    }
    if (isPrime) {
      primeNumbers.add(findPrimeList[n]);
    }
  }
  print(primeNumbers);

  // 4. Даны два целых числа A и В. Используюя рекурсию, выведите все числа от A до B включительно,
  // в порядке возрастания, если A < B, или в порядке убывания в противном случае.
  int count = 0;
  void numbersAtoB(int a, int b) {
    if (a > b) {
      numbersAtoB(a, b + 1);
      count++;
      print('$a > $b - увеличиваем b на 1, b = $b, счетчик - $count');
    } else if (a < b) {
      numbersAtoB(a + 1, b);
      count++;
      print('$a < $b увеличиваем a на 1, а = $a, счетчик - $count');
    } else {
      print('$a = $b');
    }
  }

  numbersAtoB(1, 9);
}

import 'dart:math';

void main() {
  print(randomList);
  lengthList();
  scrubbedList();
  ascendingOrderList();
  compareFunction();
}

/*
  a) Создайте List<int> из 20 случайных чисел в диапазоне от 0 до 100. Выведите в консоль.
     Для генерации случайного числа использовать Random().nextInt(100) из пакета math.
     Не следует каждый раз создавать экземляр класса Random()
 */
Random random = Random();
final List<int> randomList = List.generate(20, (index) => random.nextInt(100));

// b) Выведите в консоль длину листа.

void lengthList() {
  print(randomList.length);
}

// с) Уберите из листа все числа, кратные 5 и 7. Выведите в консоль.

void scrubbedList() {
  final List<int> scrubbedList = randomList;
  scrubbedList.removeWhere((element) => element % 5 == 0 || element % 7 == 0);
  print(scrubbedList);
}

// d) Отсортируйте лист по возрастанию. Выведите в консоль.

void ascendingOrderList() {
  final List<int> sortList = randomList;
  sortList.sort();
  print(sortList);
}

// e) Отсортируйте лист таким образом, что сначала идут четные, затем нечетные,
//    при этом не нарушая сортировку по возрастанию, внутри четной и нечетных частей. Выведите в консоль.
//    Для этого создайте собственную функцию-компаратор.

void compareFunction() {
  final sortListWithACondition = <int>[1, 8, 3, 10, 11, 6, 5, 12, 9, 2, 4, 7];
  sortListWithACondition.sort((a, b) {
    if (a.isEven || b.isEven) {
      return -1;
    }
    if (a.isOdd || b.isOdd) {
      return 1;
    }
    return 0;
  });

  print(sortListWithACondition);
}

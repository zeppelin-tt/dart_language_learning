import 'dart:math';

void main() {
  print(randomList);
  lengthList();
  scrubbedList();
  ascendingOrderList();
  removeFirstAndLast();
  sortListComparator();
  listPlusOne();
  complexTasksList();
  print(stringList);
  print('Из Стринг в Лист - $intList');
  print('Из списка в Сет - $setFromList');
  print('Создал Map из Set - $createMap');
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
  final List<int> scrubbedList = randomList..removeWhere((element) => element % 5 == 0 || element % 7 == 0);
  print(scrubbedList);
}

// d) Отсортируйте лист по возрастанию. Выведите в консоль.
void ascendingOrderList() {
  final List<int> sortList = randomList..sort();
  print(sortList);
}

// e) Отсортируйте лист таким образом, что сначала идут четные, затем нечетные,
//    при этом не нарушая сортировку по возрастанию, внутри четной и нечетных частей. Выведите в консоль.
//    Для этого создайте собственную функцию-компаратор.
//TODO Разбитие на четные и нечетные происходит, а сортировка нет.
// Исправил, надо было создать отдельную функцию компаратора, а затем в sort() как в видео вставил имя функции - компаратора.

void sortListComparator() {
  final sortList = randomList..sort(evenOddSortComparator);
  print('Создал функцию-корпаратор и отсортировал список, результат : $sortList');
}

int evenOddSortComparator(int a, int b) {
  if (a.isEven && b.isOdd) {
    return -1;
  }
  if (a.isOdd && b.isEven) {
    return 1;
  }
  return 0;
}

// f) Удалите первый и последний элемент списка. Выведите в консоль.
void removeFirstAndLast() {
  final list = randomList
    ..removeAt(0)
    ..removeLast();
  print('Убрал первый и последний элемент: $list');
}

// j) Найдите первое число больше 100 в листе. Выведите в консоль.
// g) Измените все элементы листа, добавив к ним 1. Выведите в консоль.
void listPlusOne() {
  // final list = [for(int i in randomList) i + 1]; (это для меня, как вариант решения с помощью цикла.)
  final list = randomList.map((e) => e + 1).toList();
  print('Добавил + 1 к каждому элементу: $list');
}

// h) Добавьте в лист еще елементы, каждый из которых будет на 100 больше элемента из списка. Выведите в консоль.
//    Используйте функцию expand
// i) Перемешайте элементы листа в случайном порядке. Выведите в консоль.
// j) Найдите первое число больше 100 в листе. Выведите в консоль.
// k) Найдите индекс этого числа. Выведите в консоль.
//l) Проверить, находится ли в списке хотя бы одно число из 100, 37, 55, 99, 64. Результат проверки вывестив  консоль.
// m) Посчитать сумму всех чисел в листе. Выведите в консоль.
void complexTasksList() {
  final list1 = randomList;
  final list2 = randomList.expand((element) => [element + 100]).toList();
  final resultList = [list1, list2].expand((element) => element).toList();
  print('Плюс 100 к каждому элементу - $resultList');
  final list = resultList..shuffle();
  print('Рандомно перемешать - $list');
  final overHundred = list.firstWhere((element) => element > 100);
  print('Первое число больше 100 - $overHundred, его индекс - ${list.indexWhere((element) => element > 100)}');
  final contain = list.where((element) => [100, 37, 55, 99, 64].contains(element));
  if (contain.isEmpty) {
    print('Нет совпадений');
  } else {
    print(contain);
  }
  int summary = 0;
  for (final value in list) {
    summary = summary + value;
  }
  print('Сумма всех чисел в списке = $summary');
}

// n) Превратить все элементы листа в String таким образом, чтобы каждый элемемент был 'Number <element>'.
//    Выведите в консоль.
// o) Используя лист из задания n, превратите оего обратно в List<int> при помощи функции int.parse()
//    и функциями класса String.
//    При помощи функции expand каждый элемент запишите трижды в лист.
//    Выведите в консоль.

final stringList = randomList.map((element) {
  return 'Number $element';
});

final intList = stringList.map((e) => int.parse(e.replaceAll('Number', ''))).expand((e) => [e, e, e]).toList();

// 2. Операции с Set (так как создается по дефолту LinkedHashSet, они, в большинстве своем, повторяют операции из List)
//
// Создайте Set из последнего результирующего листа прошлого задания.
final setFromList = intList.toSet();

// 3. Операции с Map
//
// a) Создайте Лист из последнего сета. Создайте Map<int, int> из листа, используя функцию asMap() листа.
//    Выведите в консоль.
//    Обратите внимание на специфику метода asMap().
final createMap = setFromList.toList().asMap();

// b) Создать объект GoldenRationSize(int smallSide), c полями int smallSide,
//    int bigSide и переопределением поля toString().
//    Большая сторона высчитывается через коэффициент золотого сечения и округляется.
// c) Заменить values в мапе на объекты GoldenRationSize, передавая значение в конструктор.
//    должна получиться Map<int, GoldenRationSize>. Выведите в консоль.

class GoldenRationSize {
 final int smallSide;
 late int bigSide = (smallSide * 1.618).round();

 GoldenRationSize(this.smallSide, this.bigSide);
}
// Задачу понял так, надо создать мапу, где ключ сгенерируется автоматом согласно индексу с 0, а значение (value)
// будет рассчитыватся в объекте GoldenRationSize. Но атрибута же два, а велью в качестве аргумента одно... и что с этим делать?
// и для чего и как переопределить toString??
// типо @override
// toString() {а в блоке, что нужно делать, что то возвращать по идее.....}
// final map = createMap.map((key, value) => MapEntry(key, GoldenRationSize(value, )));

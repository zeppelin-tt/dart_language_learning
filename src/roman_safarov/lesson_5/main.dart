// 1. Операции с List
// В этом задании можно (и даже нужно) иногда создавать новые экземпляры листов и продолжать уже с ними

import 'dart:math';

void main() {
  // a) Создайте List<int> из 20 случайных чисел в диапазоне от 0 до 100. Выведите в консоль.
// Для генерации случайного числа использовать Random().nextInt(100) из пакета math.
// Не следует каждый раз создавать экземляр класса Random()
  final list = List.generate(20, (index) => Random().nextInt(100));
  // b) Выведите в консоль длину листа.
  print(list.length);
  print(list);
  // с) Уберите из листа все числа, кратные 5 и 7. Выведите в консоль.
  // for (int i = 0; i < list.length; i++) {
  //   if (list[i] % 5 == 0) {
  //     list.removeAt(i);
  //   } else if (list[i] % 7 == 0) {
  //     list.removeAt(i);
  //   }
  // }

  final list7 = list.where((element) => element % 5 == 0 || element % 7 == 0);

  print(list7);
  // d) Отсортируйте лист по возрастанию. Выведите в консоль.
  list.sort();
  print(list);
  // e) Отсортируйте лист таким образом, что сначала идут четные, затем нечетные,
// при этом не нарушая сортировку по возрастанию, внутри четной и нечетных частей. Выведите в консоль.
// Для этого создайте собственную функцию-компаратор.
  //       System.out.print("массив с четными числами" + " ");
  list
    ..sort(evenOddComparator)
    // f) Удалите первый и последний элемент списка. Выведите в консоль.
    ..removeAt(0)
    ..removeLast();
  print(list);
  // g) Измените все элементы листа, добавив к ним 1. Выведите в консоль.
  final list8 = list.map((e) => e + 1);
  print(list8);
// h) Добавьте в лист еще елементы, каждый из которых будет на 100 больше элемента из списка. Выведите в консоль.
// Используйте функцию expand
  final list2 = list.expand((item) => [item, item + 100]).toList();
  print(list2);
// i) Перемешайте элементы листа в случайном порядке. Выведите в консоль.
  list.shuffle();
  print(list);
// j) Найдите первое число больше 100 в листе. Выведите в консоль.
  final list9 = list2.firstWhere((element) => element > 100);
  print(list9);
// k) Найдите индекс этого числа. Выведите в консоль.
  final list10 = list2.indexWhere((element) => element > 100);
  print(list10);
  // l) Проверить, находится ли в списке хотя бы одно число из 100, 37, 55, 99, 64. Результат проверки вывестив  консоль.
  final containList = list.where((element) => [100, 37, 55, 99, 64].contains(element));
  print(containList);
  //через условный интерфейс any
  final list3 = [100, 37, 55, 99, 64];
  final checkList = list.any((element) => list3.contains(e));
  print(checkList);
  // m) Посчитать сумму всех чисел в листе. Выведите в консоль.
  int sum = 0;
  for (final e in list2) {
    sum += e;
  }
  print(sum);
  // n) Превратить все элементы листа в String таким образом, чтобы каждый лемемент был 'Number <element>'.
// Выведите в консоль.

  final list4 = list.map((item) {
    return 'Number $item';
  });
  print(list4);
  // o) Используя лист из задания n, превратите оего обратно в List<int> при помощи функции int.parse()
// и функциями класса String.
// При помощи функции expand каждый элемент запишите трижды в лист.
// Выведите в консоль.
  final list5 = list4
      .map((e) => int.parse(e.replaceAll('Number', '')))
      .expand((e) => [e, e, e])
      .toList();
  print(list5);
  // 2. Операции с Set (так как создается по дефолту LinkedHashSet, они, в большинстве своем, повторяют операции из List)
  //
  // Создайте Set из последнего результирующего листа прошлого задания.
  //
  final set = list5.toSet();
  print(set);
  // 3. Операции с Map
  //

  // a) Создайте Лист из последнего сета. Создайте Map<int, int> из листа, используя функцию asMap() листа.
  // Выведите в консоль.
  // Обратите внимание на специфику метода asMap().
  final map1 = set.toList().asMap();
  print(map1);

  // c) Заменить values в мапе на объекты GoldenRationSize, передавая значение в конструктор.
  // должна получиться Map<int, GoldenRationSize>. Выведите в консоль.
  final map2 = map1.map((key, value) => MapEntry(key, GoldenRationSize(value)));
// b) Создать объект GoldenRationSize(int smallSide), c полями int smallSide,
// int bigSide и переопределением поля toString().
// Большая сторона высчитывается через коэффициент золотого сечения и округляется.
  print(map2);
}

int evenOddComparator(int a, int b) {
  if (a.isEven && b.isOdd) {
    return -1;
  }
  if (a.isOdd && b.isEven) {
    return 1;
  }
  return 0;
}

class GoldenRationSize {
  final int smallSize;
  final int bigSize;

  GoldenRationSize(this.smallSize) : bigSize = (smallSize * 1.62).round();

  @override
  String toString() {
    return 'GoldenRationSize{smallSize: $smallSize, bigSize: $bigSize}';
  }
}

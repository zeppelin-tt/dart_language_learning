import 'dart:math';

void main() {
  // 1. Операции с List
// В этом задании можно (и даже нужно) иногда создавать новые экземпляры листов и продолжать уже с ними
// В этом задании НЕЛЬЗЯ использовать циклы. Толкьо методы List и Iterable
//
// a) Создайте List<int> из 20 случайных чисел в диапазоне от 0 до 100. Выведите в консоль.
// Для генерации случайного числа использовать Random().nextInt(100) из пакета math.
// Не следует каждый раз создавать экземляр класса Random()
  final List<int> list = List.generate(20, (index) => Random().nextInt(100));
  print(list);

  // b) Выведите в консоль длину листа.
  print(list.length);

  // с) Уберите из листа все числа, кратные 5 и 7. Выведите в консоль.
  list.removeWhere((element) => element % 5 == 0 || element % 7 == 0);
  print(list);

  // d) Отсортируйте лист по возрастанию. Выведите в консоль.
  list.sort();
  print(list);

  // e) Отсортируйте лист таким образом, что сначала идут четные, затем нечетные,
  // при этом не нарушая сортировку по возрастанию, внутри четной и нечетных частей. Выведите в консоль.
  // // Для этого создайте собственную функцию-компаратор.
  int numComparator(int a, int b) {
    if (a.isEven && b.isOdd) {
      return 1;
    }
    if (a.isOdd && b.isEven) {
      return -1;
    }
    return 0;
  }

  list.sort(numComparator);
  print(list);

  // f) Удалите первый и последний элемент списка. Выведите в консоль.

  list
    ..removeAt(0)
    ..removeLast();
  print(list);

  // g) Измените все элементы листа, добавив к ним 1. Выведите в консоль.
  final list2 = list.map((element) => element + 1);
  print(list2);

  // h) Добавьте в лист еще елементы, каждый из которых будет на 100 больше элемента из списка. Выведите в консоль.
  // Используйте функцию expand
  final list3 = list2.expand((element) => [element, element + 100]).toList();
  print(list3);

  // i) Перемешайте элементы листа в случайном порядке. Выведите в консоль.
  list3.shuffle();
  print(list3);

  // j) Найдите первое число больше 100 в листе. Выведите в консоль.
  final firstNumBigger100 = list3.firstWhere((element) => element > 100);
  print(firstNumBigger100);

  // k) Найдите индекс этого числа. Выведите в консоль.
  final firstIndexBigger100 = list3.indexWhere((element) => element > 100);
  print(firstIndexBigger100);

  // l) Проверить, находится ли в списке хотя бы одно число из 100, 37, 55, 99, 64. Результат проверки вывестив  консоль.
  final containList = list3.where((element) => [100, 37, 55, 99, 64].contains(element));
  print(containList);

  // m) Посчитать сумму всех чисел в листе. Выведите в консоль.
  final sumOfList = list3.reduce((value, element) => value + element);
  print(sumOfList);

  // n) Превратить все элементы листа в String таким образом, чтобы каждый лемемент был 'Number <element>'.
  // Выведите в консоль.
  final list4 = list3.map((element) => 'Number $element');
  print(list4);

  // o) Используя лист из задания n, превратите оего обратно в List<int> при помощи функции int.parse()
  // и функциями класса String.
  // При помощи функции expand каждый элемент запишите трижды в лист.
  // Выведите в консоль.
  final list5 = list4
      .map((element) => int.parse(element.replaceAll('Number', ' ')))
      .expand((element) => [element, element, element]);
  print(list5);

//   2. Операции с Set (так как создается по дефолту LinkedHashSet, они, в большинстве своем, повторяют операции из List)
//   Создайте Set из последнего результирующего листа прошлого задания.
  final listToSet = list5.toSet();
  print(listToSet);

  // 3. Операции с Map
  // a) Создайте Лист из последнего сета. Создайте Map<int, int> из листа, используя функцию asMap() листа.
  // Выведите в консоль.
  // Обратите внимание на специфику метода asMap().
  final setToMap = listToSet.toList().asMap();
  print(setToMap);

  // c) Заменить values в мапе на объекты GoldenRationSize, передавая значение в конструктор.
// должна получиться Map<int, GoldenRationSize>. Выведите в консоль.
  final map = setToMap.map((key, value) => MapEntry(key, GoldenRationSize(value)));
  print(map);
}

// b) Создать объект GoldenRationSize(int smallSide), c полями int smallSide,
// int bigSide и переопределением поля toString().
// Большая сторона высчитывается через коэффициент золотого сечения и округляется.
class GoldenRationSize {
  int smallSide = 0;
  int bigSide = 0;

  GoldenRationSize(this.smallSide) : bigSide = (smallSide * 1.618).round();

  @override
  String toString() {
    return 'GoldenRationSize{smallSide: $smallSide, bigSide: $bigSide}';
  }
}

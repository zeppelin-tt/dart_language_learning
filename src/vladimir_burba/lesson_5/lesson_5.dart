import '../list_utils.dart';
import '../number_utils.dart';
import 'lesson_5_utils.dart';

void main() {
  final List<int> list = listOperations();
  final Set<int> set = setOperations(list).cast<int>();
  mapOperations(set);
}

void mapOperations(Set<int> set) {
  // a) Создайте Лист из последнего сета. Создайте Map<int, int> из листа, используя функцию asMap() листа.
  // Выведите в консоль.
  // Обратите внимание на специфику метода asMap().
  final map = [...set].asMap();
  print('Map - $map');
  // c) Заменить values в мапе на объекты GoldenRationSize, передавая значение в конструктор.
  // должна получиться Map<int, GoldenRationSize>. Выведите в консоль.
  final Map<int, GoldenRationSize> mapGoldenRate = map.map((key, value) => MapEntry(key, GoldenRationSize(value)));
  print('Map золотого сечения - $mapGoldenRate');
}

// b) Создать объект GoldenRationSize(int smallSide), c полями int smallSide,
// int bigSide и переопределением поля toString().
// Большая сторона высчитывается через коэффициент золотого сечения и округляется.
class GoldenRationSize {
  final int smallSide;
  final int bigSide;

  GoldenRationSize(this.smallSide) : bigSide = (smallSide * fi).round();

  @override
  String toString() {
    return '$smallSide -> $bigSide}';
  }
}

Set setOperations(List list) {
  // Создайте Set из последнего результирующего листа прошлого задания.
  final Set result = {...list};
  print('Набор - $result');
  return result;
}

// 1. Операции с List
List<int> listOperations() {
// a) Создайте List<int> из 20 случайных чисел в диапазоне от 0 до 100. Выведите в консоль.
// Для генерации случайного числа использовать Random().nextInt(100) из пакета math.
// Не следует каждый раз создавать экземляр класса Random()
  final rndList = generateRandomIntList(20, growable: false);
  print('Изначальный лист - $rndList');
// b) Выведите в консоль длину листа.
  print('Длина листа - ${rndList.length}');
// с) Уберите из листа все числа, кратные 5 и 7. Выведите в консоль.
  print('Лист без чисел, кратных 5 и 7 - ${deleteMultiplesFromListMass(rndList, [5, 7])}');
// d) Отсортируйте лист по возрастанию. Выведите в консоль.
  print('Отсортированный список - ${sortList(rndList)}');
// e) Отсортируйте лист таким образом, что сначала идут четные, затем нечетные,
// при этом не нарушая сортировку по возрастанию, внутри четной и нечетных частей. Выведите в консоль.
// Для этого создайте собственную функцию-компаратор.
  print('Отсортированный по четности список - ${sortList(rndList, comparator: evenComparator)}');
// f) Удалите первый и последний элемент списка. Выведите в консоль.
  print('Список без крайних элементов - ${deleteListBorders(rndList)}');
// g) Измените все элементы листа, добавив к ним 1. Выведите в консоль.
  print('Список, увеличенный на 1 - ${incListElements(rndList)}');
// h) Добавьте в лист еще елементы, каждый из которых будет на 100 больше элемента из списка. Выведите в консоль.
// Используйте функцию expand
  print('Список с добавленными элементами, увеличенными на 100 - ${addIncElements(rndList, 100)}');
// i) Перемешайте элементы листа в случайном порядке. Выведите в консоль.
  print('Перемешанный список - ${shuffleElements(rndList)}');
// j) Найдите первое число больше 100 в листе. Выведите в консоль.
  final int? elem = getFirstElementMoreThen(rndList, 100)?.toInt();
  if (elem == null) {
    print('Элементы, больше 100 отсутствуют');
  } else {
    print('Первый элемент, больше 100 - elem');
  }
// k) Найдите индекс этого числа. Выведите в консоль.
  if (!rndList.contains(elem)) {
    print('В списке нет элемента $elem');
  } else {
    print('Индекс элемента $elem = ${rndList.indexOf(elem!)}');
  }
// l) Проверить, находится ли в списке хотя бы одно число из 100, 37, 55, 99, 64. Результат проверки вывестив  консоль.
  const searchList = [100, 37, 55, 99, 64];
  if (rndList.containsAny(searchList)) {
    print('В списке есть некоторые из искомых чисел $searchList');
  } else {
    print('В списке нет искомых чисел $searchList');
  }
// m) Посчитать сумму всех чисел в листе. Выведите в консоль.
  print('Сумма элементов листа - ${getElementsSum(rndList.cast<num>())}');
// n) Превратить все элементы листа в String таким образом, чтобы каждый лемемент был 'Number <element>'.
// Выведите в консоль.
  final List<String> strList = setPrefix(rndList, 'Number');
  print('Список с префиксом - $strList');
// o) Используя лист из задания n, превратите оего обратно в List<int> при помощи функции int.parse()
// и функциями класса String.
// При помощи функции expand каждый элемент запишите трижды в лист.
// Выведите в консоль.
  List<int> listInt = parseIntList(strList);
  listInt = propagateList(listInt, 3).cast<int>();
  print('Размноженный список - $listInt');
  return listInt;
}

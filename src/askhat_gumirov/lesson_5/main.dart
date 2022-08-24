//Задание №1
import 'dart:math';

void main() {
  listOfInt = List<int>.generate(20, (index) => Random().nextInt(100));
  print(listOfInt.length);
  print('Лист рандомных элементов $listOfInt');
  listOfInt.removeWhere((element) => element % 5 == 0 || element % 7 == 0);
  print('Лист без элементов четных 5 или 7 $listOfInt');
  listOfInt.sort();
  print('Сортированный лист $listOfInt');
  listOfInt.sort(oddEven);
  print('Лист сортированный на чет нечет $listOfInt');
  listOfInt
    ..removeAt(0)
    ..removeLast();
  print('Лист с удаленными первым и последним элементами $listOfInt');
  print('Лист с увеличенными на 1 элементами ${listOfInt.map((e) => e + 1)}');
  final List<int> increasedElements = listOfInt.expand((element) => [element, (element + 100)]).toList();
  print('Лист с элементами увеличенными на 100 $increasedElements');
  int result = increasedElements.firstWhere((element) => element > 100);
  print('Первый элемент больше 100 $result');
  result =
      increasedElements.indexWhere((element) => element == increasedElements.firstWhere((element) => element > 100));
  print('Индекс первого элемента больше 100 $result');
  final int newResult = increasedElements.firstWhere(compare, orElse: () => 0);
  print(newResult == 0 ? 'Массив не содержит элементов из списка $compareList' : 'Массив содержит элемент $newResult');
  result = increasedElements.fold(0, (previousValue, element) => previousValue += element);
  print('Сумма элементов массива = $result');
  final List<String> listToString = [];
  listToString.addAll(increasedElements.map((element) => 'Number $element'));
  print(listToString);

  // Лист стрингов в лист интов
  print('Лист стрингов в лист интов');
  final List<int> stringToIntList = [];
  List<List<String>> tempList = [];
  tempList = listToString.map((e) => e.split(' ')).toList();
  print(tempList);
  stringToIntList.addAll(tempList.map((e) => int.parse(e[1])));
  print(stringToIntList);
  print('Утраивание элементов');
  print(stringToIntList.expand((element) => [element, element, element]).toList());
  print('Сет');
  print(stringToIntList.toSet());
  print('Мап');
  Map<int, int> mapOfInt;
  print(mapOfInt = stringToIntList.asMap());
  print('Золотое сечение');
  final GoldenRationSize goldenRationSize = GoldenRationSize(5);
  print(goldenRationSize);
  final Map<int,GoldenRationSize> mapOfGoldenRation = mapOfInt.map((key, value) => MapEntry(key, GoldenRationSize(value)));
  print(mapOfGoldenRation);
}

late List<int> listOfInt;

int oddEven(int a, int b) {
  if (a.isEven && b.isOdd) {
    return -1;
  }
  if (a.isOdd && b.isEven) {
    return 1;
  }
  return 0;
}

final List<int> compareList = [100, 37, 55, 99, 64];
bool compare(int value) {
  return compareList.contains(value);
}

class GoldenRationSize {
  int smallSide;
  int bigSide;
  GoldenRationSize(this.smallSide): bigSide = (smallSide * 1.61803).round();

  @override
  String toString() {
    return 'Меньшая сторона $smallSide, Большая сторона $bigSide';
  }
}

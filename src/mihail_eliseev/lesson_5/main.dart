import 'dart:core';
import 'dart:math';

void main() {
  final list1 = List<int>.generate(20, (index) => Random().nextInt(100));
  print(list1);

  print(list1.length);

  list1.removeWhere((e) => e % 5 == 0 || e % 7 == 0);
  print(list1);

  list1.sort();
  print(list1);

  list1.sort(evenOdd);
  print(list1);

  list1.removeAt(0);
  list1.removeLast();
  print(list1);

  final list2 = list1.map((e) {
    return e + 1;
  });
  print(list2);

  final list3 = list2.expand((e) {
    return [e, e + 100];
  }).toList();
  print(list3);

  list3.shuffle();

  final firstMoreHundred = list3.firstWhere((e) {
    return e > 100;
  });
  print(firstMoreHundred);

  print(list3.indexOf(firstMoreHundred));

  final listForVerification = [100, 37, 55, 99, 64];
  final isContainsNumbers = list3.any((e) => listForVerification.contains(e));
  print(isContainsNumbers);

  final sum = list3.reduce((value, item) => value + item);
  print(sum);

  final list4 = list1.map((item) {
    return 'Number $item';
  });
  print(list4);

  //o) Используя лист из задания n, превратите оего обратно в List<int> при помощи функции int.parse()
  //    и функциями класса String.
  final list5 = list4.map((e) {
    return int.parse(e.replaceAll('Number ', ''));
  }).expand((item) {
    return [item, item, item];
  }).toList();
  print(list5);

  final set1 = list5.toSet();
  print(set1);

  final list7 = set1.toList();
  print(list7);

  final Map<int, int> map1 = list7.asMap();
  print(map1);

  //Заменить values в мапе на объекты GoldenRationSize, передавая значение в конструктор.
  //    должна получиться Map<int, GoldenRationSize>. Выведите в консоль.

  final map2 = map1.map((key, value) {
    return MapEntry(key, GoldenRationSize(value));
  });
  print(map2);
}

int evenOdd(int a, int b) {
  if (a.isEven && b.isOdd) {
    return -1;
  }
  if (b.isEven && a.isOdd) {
    return 1;
  }
  return 0;
}

class GoldenRationSize {
  final int smallSide;
  final int bigSide;

  GoldenRationSize(this.smallSide) : bigSide = (smallSide * 1.618).round();

  @override
  String toString() {
    return 'GoldenRationSize{smallSide: $smallSide, bigSide: $bigSide}';
  }
}

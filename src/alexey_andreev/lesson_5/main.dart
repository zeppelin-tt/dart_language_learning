import 'dart:math';

void main() {
  final list1 = List<int>.generate(20, (index) => Random().nextInt(100));
  print(list1);

  print(list1.length);

  list1.removeWhere((item) => item % 5 == 0 || item % 7 == 0);
  print(list1);

  list1.sort();
  print(list1);

  list1.sort(evenOddComparator);
  print(list1);

  list1
    ..removeAt(0)
    ..removeLast();
  print(list1);

  final list2 = list1.map((item) => item + 1).toList();
  print(list2);

  final list3 = list2.expand((item) => [item, item + 100]).toList();
  print(list3);

  list3.shuffle();
  print(list3);

  print(list3.firstWhere((item) => item > 100));

  print(list3.indexWhere((item) => item > 100));

  print(list3.contains(100));
  print(list3.contains(37));
  print(list3.contains(55));
  print(list3.contains(99));
  print(list3.contains(64));

  final sum = list3.reduce((value, item) => value + item);
  print(sum);

  final list4 = list3.map((item) => 'Number ${item.toString()}');
  print(list4);

  final list5 = list4.map((item) => int.parse(item.substring(7)));
  print(list5);

  final list6 = list5.expand((item) => [item, item, item]).toList();
  print(list6);

  final set1 = list6.toSet();
  print(set1);

  final list7 = set1.toList();

  final Map<int, int> map1 = list7.asMap();
  print(map1);

  final Map<int, GoldenRationSize> map2 = map1.map((key, value) => MapEntry(key, GoldenRationSize(value)));

  print(map2);
}

int evenOddComparator(int a, int b) {
  if (a % 2 == b % 2 && a > b) {
    return 1;
  }
  if (a.isEven && b.isOdd) {
    return 1;
  }
  return 0;
}

class GoldenRationSize {
  int smallSide;

  GoldenRationSize(this.smallSide);

  late final bigSide = (smallSide * 1.62).round();

  @override
  String toString() {
    return '$smallSide, $bigSide';
  }
}

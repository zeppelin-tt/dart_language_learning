import 'dart:math' show Random;

void main() {
  final rnd = Random();
  final list = List.generate(20, (_) => rnd.nextInt(100));
  print(list);
  print(list.length);

  final list2 = list.toList()
    ..retainWhere((element) => element % 5 == 0 && element % 7 == 0);
  print(list2);

  final list3 = list.toList()..sort();
  print(list3);

  int sortList4(int a, int b) {
    if (a.isEven && !b.isEven) {
      return -1;
    } else if (b.isEven && !a.isEven) {
      return 1;
    } else {
      return 0;
    }
  }

  final list4 = list.toList()..sort(sortList4);
  print(list4);

  final list5 = list.toList().sublist(1, list.length - 1).toList();
  print(list5);

  final list6 = list.map((e) => e + 1).toList();
  print(list6);

  final list7 =
      list.toList().expand((element) => [element, element + 100]).toList();
  print(list7);

  final list8 = list.toList()..shuffle();
  print(list8);

  final firstMoreThen100 = list7.firstWhere((e) => e > 100);
  print(firstMoreThen100);

  final int index = list7.indexOf(firstMoreThen100);
  print(index);

  final containsNumbers = list7.any((e) => [100, 37, 55, 99, 64].contains(e));
  print(containsNumbers);

  final sum = list7.reduce((value, element) => value + element);
  print(sum);

  final list9 = list.map((element) => 'Number $element').toList();
  print(list9);

  final list10 = list9
      .map((e) => e.replaceAll(RegExp('[^0-9]+'), ''))
      .map(int.parse)
      .expand((e) => [e, e, e])
      .toList();
  print(list10);

  final Set<int> set1 = Set.from(list10);
  print(set1);

  final Map<int, int> map1 = set1.toList().asMap();
  print(map1);

  final Map<int, GoldenRationSize> map2 =
      map1.map((key, value) => MapEntry(key, GoldenRationSize(value)));
  print(map2);
}

class GoldenRationSize {
  int smallSide;
  late int bigSide;
  GoldenRationSize(this.smallSide) {
    bigSide = smallSide ~/ 0.618;
  }

  @override
  String toString() {
    return '$bigSide';
  }
}

import 'dart:math' show Random;

void main() {
  final rnd = Random();
  final list = List.generate(20, (_) => rnd.nextInt(100));
  print(list);
  print(list.length);

  final l2 = <int>[...list]
    ..retainWhere((element) => element % 5 == 0 && element % 7 == 0);
  print(l2);

  final List<int> l3 = [...list]..sort();
  print(l3);

  final List<int> l4 = [...list]..sort((a, b) {
      if (a.isEven && !b.isEven) {
        return -1;
      } else if (b.isEven && !a.isEven) {
        return 1;
      } else {
        return a.compareTo(b);
      }
    });
  print(l4);

  final List<int> l5 = list.sublist(1, list.length - 1);
  print(l5);

  final List<int> l6 = list.map((e) => e + 1).toList();
  print(l6);

  final List<int> l7 =
      list.expand((element) => [element, element + 100]).toList();
  print(l7);

  final List<int> l8 = [...list]..shuffle();
  print(l8);

  final greater = l7.where((element) => element > 100).toList()..sort();
  print(greater.first);

  final int index = l7.indexWhere((element) => element > 100);
  if (index != -1) {}
  print(index);

  final contain = list.where((element) =>
      element == 100 ||
      element == 37 ||
      element == 55 ||
      element == 99 ||
      element == 64);
  print(contain);

  int sum = 0;
  for (final int element in list) {
    sum += element;
  }
  print(sum);

  final List<String> l9 = list.map((element) => 'Number $element').toList();
  print(l9);

  final List<int> l10 = l9
      .map((e) => e.replaceAll(RegExp('[^0-9]+'), ''))
      .map(int.parse)
      .expand((e) => [e, e, e])
      .toList();
  print(l10);

  final Set<int> set1 = Set.from(l10);
  print(set1);

  final List<int> l11 = set1.toList();
  final Map<int, int> map1 = l11.asMap();
  print(map1);

  final Map<int, GoldenRationSize> map2 = {};
  map1.forEach((key, value) {
    map2[key] = GoldenRationSize(value);
  });
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

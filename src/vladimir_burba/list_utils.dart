import 'dart:math';

extension Comparison on List {
  bool containsAny(List searchList) {
    return any((element) => searchList.contains(element));
  }
}

extension AggregateList on List<num> {
  num sum() {
    return reduce((value, element) => value + element);
  }
  num avg() {
    return sum() / length;
  }
}

List shuffleElements(List listInt, [Random? rnd]) {
  return listInt.toList()..shuffle(rnd);
}

List<num> incListElements(List<num> listInt, [int increment = 1]) {
  return listInt.toList().expand((element) => [element + increment]).toList();
}

List<String> setPrefix(List list, String prefix) {
  return list.toList().expand((element) => ['$prefix $element']).toList();
}

List<int> parseIntList(List<String> list) {
  return list.toList().expand((element) => [int.parse(element.replaceAll(RegExp(r'\D'), ''))]).toList();
}

List propagateList(List list, int count) {
  return list.toList().expand((element) => propagateElement(element, count)).toList();
}

Iterable<T?> propagateElement<T>(T? element, int count) sync* {
  for (int i = 0; i < count; i++) {
    yield element;
  }
}

List<int> generateRandomIntList(int length, {int minValue = 0, int maxValue = 100, bool growable = true}) {
  final rnd = Random();
  return List.generate(length, (index) => rnd.nextInt(maxValue - minValue) + minValue, growable: growable);
}

List<num> bubbleSort(List<num> list) {
  int upLim = list.length - 1;
  int delta;
  while (upLim > 0) {
    delta = 1;
    for (int iter = 0; iter < upLim; iter++) {
      if (list[iter] > list[iter + 1]) {
        list.insert(iter + 1, list.removeAt(iter));
        delta = 1;
      } else {
        delta++;
      }
    }
    upLim -= delta;
  }
  return list;
}
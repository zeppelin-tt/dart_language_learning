import 'dart:math';

extension Comparison on List {
  bool containsAny(List searchList) {
    return any((element) => searchList.contains(element));
  }
}

num getElementsSum(List<num> list) {
  return list.toList().reduce((value, element) => value + element);
}

num getElementsAvg(List<num> list) {
  return getElementsSum(list) / list.length;
}

num getMaxElement(List<num> list) {
  final result = list.toList()..sort();
  return result.last;
}

num getMinElement(List<num> list) {
  final result = list.toList()..sort();
  return result.first;
}

List shuffleElements(List listInt, [Random? rnd]) {
  return listInt.toList()..shuffle(rnd);
}

List<num> incListElements(List<num> listInt, [int increment = 1]) {
  final List<num> result = listInt.toList();
  for (var i = 0; i < result.length; i++) {
    result[i] += increment;
  }
  return result;
}

List<String> setPrefix(List list, String prefix) {
  final List<String> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add('$prefix ${list[i]}');
  }
  return result;
}

List<int> parseIntList(List<String> list) {
  final List<int> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(int.parse(list[i].replaceAll(RegExp(r'\D'), '')));
  }
  return result;
}

List propagateList(List list, int count) {
  return list.toList().expand((element) => propagateElement(element, count)).toList();
}

Iterable propagateElement(Object? element, int count) sync* {
  for (int i = 0; i < count; i++) {
    yield element;
  }
}

List<int> generateRandomIntList(int length, {int minValue = 0, int maxValue = 100, bool growable = true}) {
  final Random rnd = Random();
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
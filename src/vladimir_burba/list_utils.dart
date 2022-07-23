import 'dart:math';

extension Comparison on List {
  bool containsAny(List searchList) {
    return any((element) => searchList.contains(element));
  }
}

num getElementsSum(List<num> list) {
  return list.reduce((value, element) => value + element);
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
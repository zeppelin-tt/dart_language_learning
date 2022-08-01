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

Iterable propagateElement(Object? element, int count) sync* {
  for (int i = 0; i < count; i++) {
    yield element;
  }
}

List<int> generateRandomIntList(int length, {int minValue = 0, int maxValue = 100, bool growable = true}) {
  final Random rnd = Random();
  return List.generate(length, (index) => rnd.nextInt(maxValue - minValue) + minValue, growable: growable);
}

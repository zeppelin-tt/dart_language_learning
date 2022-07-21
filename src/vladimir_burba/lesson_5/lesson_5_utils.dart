List<int> deleteMultiplesFromListMass(List<int> listInt, List<int> multipliers) {
  List<int> result = listInt.toList();
  for (int i = 0; i < multipliers.length; i++) {
    result = deleteMultiplesFromList(result, multipliers[i]);
  }
  return result;
}

List<int> deleteMultiplesFromList(List<int> listInt, int multiplier) {
  return listInt.toList()..removeWhere((element) => element % multiplier == 0);
}

num evenCompareFunc(int item) {
  return item.isEven ? 1 / (-1 * item) : item;
}

Comparator<int> evenComparator = (a, b) => evenCompareFunc(a).compareTo(evenCompareFunc(b));

List<int> sortList(List<int> listInt, [Comparator<int>? compare]) {
  return compare == null ? (listInt.toList()..sort()) : (listInt.toList()..sort(compare));
}

List deleteListBorders(List list) {
  return list.length >= 2
      ? (list.toList()
        ..removeAt(0)
        ..removeLast())
      : [];
}

List<num> addIncElements(List<num> listInt, [int increment = 1]) {
  return listInt.toList().expand((element) => addIncElement(element, increment)).toList();
}

Iterable<num> addIncElement(num element, [int increment = 1]) sync* {
  yield element;
  yield element + increment;
}

num? getFirstElementMoreThen(List<num> list, num that) {
  final result = list.firstWhere((element) => element > that, orElse: () => -1);
  return result == -1 ? null : result;
}

List<int> deleteMultiplesFromListMass(List<int> listInt, List<int> multipliers) {
  return listInt.toList()..removeWhere((element) => multipliers.any((multiplier) => element % multiplier == 0));
}

List<int> deleteMultiplesFromList(List<int> listInt, int multiplier) {
  return deleteMultiplesFromListMass(listInt, [multiplier]);
}

num evenCompareFunc(int item) {
  return item.isEven ? 1 / (-1 * item) : item;
}

Comparator<int> evenComparator = (a, b) => evenCompareFunc(a).compareTo(evenCompareFunc(b));

List<int> sortList(List<int> listInt, {Comparator<int>? comparator}) {
  return comparator == null ? (listInt.toList()..sort()) : (listInt.toList()..sort(comparator));
}

List deleteListBorders(List list) {
  return list.length >= 2
      ? (list.toList()
        ..removeAt(0)
        ..removeLast())
      : [];
}

List<num> addIncElements(List<num> listInt, [int increment = 1]) {
  return listInt.toList().expand((element) => [element, element + increment]).toList();
}

num? getFirstElementMoreThen(List<num> list, num that) {
  final result = list.firstWhere((element) => element > that, orElse: () => -1);
  return result == -1 ? null : result;
}

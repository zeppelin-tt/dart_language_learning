import 'dart:io';

void main() {
  final File file1 = File('src/alexey_andreev/lesson_7/lesson_7_text.txt');
  final String text = file1.readAsStringSync();

  final Map<String, int> resultMap = task3(text)..printAsNumberOfLetters();
}

Map<String, int> task3(String text) {
  final RegExp getLetters = RegExp('[А-Яа-я]', caseSensitive: false);
  final Map<String, int> map = <String, int>{};
  final Iterable<Match> matches = getLetters.allMatches(text);
  final Set<String> setOfLetters =
      ((matches.map((e) => e.input.substring(e.start, e.end).toUpperCase())).toList()).toSet();

  for (final String item in setOfLetters) {
    final RegExp counter = RegExp(item, caseSensitive: false);
    final Iterable<Match> repeatsOfLetter = counter.allMatches(text);
    final int k = repeatsOfLetter.length;
    map.putIfAbsent(item, () => k);
  }

  final List<Map<String, int>> listData = [];
  map.forEach((key, value) => listData.add({key: value}));

  listData.sort((a, b) {
    final aKey = a.values.first;
    final bKey = b.values.first;
    return aKey < bKey ? 1 : -1;
  });

  final Map<String, int> sortedMap = {for (var e in listData) e.keys.first: e.values.first};

  return sortedMap;
}

extension PrintingAsNumberOfLetters on Map<String, int> {
  void printAsNumberOfLetters() {
    forEach((key, value) {
      print('Буква "$key": $value вхождений');
    });
  }
}

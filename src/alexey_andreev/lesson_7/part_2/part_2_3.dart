import 'dart:io';

void main() {
  final File file1 = File(r'C:\project\dart_application\bin\lesson_7_text.txt');
  final String text = file1.readAsStringSync()..printAsNumberOfLetters;
}

extension PrintingAsNumberOfLetters on String {
  void get printAsNumberOfLetters {
    final RegExp getLetters = RegExp('[А-Яа-я]', caseSensitive: false);
    final Map<String, int> map = <String, int>{};
    final Iterable<Match> matches = getLetters.allMatches(this);
    final Set<String> setOfLetters =
        ((matches.map((e) => e.input.substring(e.start, e.end).toUpperCase())).toList()).toSet();

    for (final item in setOfLetters) {
      final RegExp counter = RegExp(item, caseSensitive: false);
      final Iterable<Match> repeatsOfLetter = counter.allMatches(this);
      final k = repeatsOfLetter.length;
      map.putIfAbsent(item, () => k);
    }

    final List<Map<String, int>> listData = [];
    map.forEach((key, value) => listData.add({key: value}));

    listData.sort((a, b) {
      final aKey = a.values.first;
      final bKey = b.values.first;
      return aKey < bKey ? 1 : -1;
    });

    final Map<String, int> sortedMap = {for (var e in listData) e.keys.first: e.values.first}..forEach((key, value) {
        print('Буква "$key": $value вхождений');
      });
  }
}

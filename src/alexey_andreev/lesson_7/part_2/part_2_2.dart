import 'dart:io';

void main() {
  final File file1 = File('src/alexey_andreev/lesson_7/lesson_7_text.txt');
  final String text = file1.readAsStringSync()..printAsWordLengths;
}

extension PrintingAsWordLengths on String {
  void get printAsWordLengths {
    final wordsRegExp = RegExp('[а-я]+', caseSensitive: false);
    final map = <int, List<String>>{};
    final wordList = List<String>.empty(growable: true);
    final Iterable<Match> matches = wordsRegExp.allMatches(this);
    final Set<String> setOfWords =
        (matches.map((e) => e.input.substring(e.start, e.end).toLowerCase()).toList()).toSet();

    for (final String item in setOfWords) {
      wordList.clear();
      final length = item.length;
      wordList.add(item);
      final key = map.containsKey(length);
      if (!key) {
        map.putIfAbsent(length, () => List<String>.from(wordList));
      }
      if (key) {
        map.update(length, (value) => value + List<String>.from(wordList));
      }
    }

    final List<Map<int, List<String>>> listData = [];
    map.forEach((key, value) => listData.add({key: value}));

    listData.sort((a, b) {
      final aKey = a.keys.first;
      final bKey = b.keys.first;
      return aKey < bKey ? 1 : -1;
    });

    final Map<int, List<String>> sortedMap = {for (var e in listData) e.keys.first: e.values.first}
      ..forEach((key, value) {
        if (value.length > 1) {
          print('$key букв в словах: ${value.join(', ')}');
        } else {
          print('$key букв в слове ${value.join(', ')}');
        }
      });
  }
}

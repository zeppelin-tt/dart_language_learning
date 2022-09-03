import 'dart:io';

import 'extension.dart';

void main() {
  final File fileText = File('src/_homeworks/lesson_7_text.txt');

  if (fileText.existsSync()) {
    try {
      final String fileContent = fileText.readAsStringSync();
      final Map<int, List<String>> oneMap = task1(fileContent);
      final Map<int, List<String>> twoMap = task2(fileContent);
      final Map<String, int> threeMap = task3(fileContent);

      oneMap.printAsRepeatedWords();
      twoMap.printAsWordLengths();
      threeMap.printAsNumberOfLetters();
      fileContent
        ..capitalLatter()
        ..cursiveLetter()
        ..punctuation()
        ..numbers();

      print('-' * 100);
    } on Exception catch (e) {
      print('возникли проблемы при чтении информации из файла!');
      print('ошибка - $e');
    }
  }
}

Map<int, List<String>> task1(String text) {
  final mapOfResult = <int, List<String>>{};
  final wordList = List<String>.empty(growable: true);
  final regExp = RegExp('[А-Яа-яa-zA-z]+');
  final Iterable<Match> matches = regExp.allMatches(text);
  final Set<String> setOfCharacter =
      (matches.map((e) => e.input.substring(e.start, e.end).toLowerCase()).toList()).toSet();
  for (final String point in setOfCharacter) {
    wordList.clear();
    final enumerator = RegExp('(^|[А-Яа-яa-z])$point(?![А-Яа-яA-Za-z])');
    final Iterable<Match> matches = enumerator.allMatches(text);
    final keys = matches.length;
    final force = mapOfResult.containsKey(keys);
    wordList.add(point);
    if (keys > 1) {
      if (!force) {
        mapOfResult.putIfAbsent(keys, () => List<String>.from(wordList));
      }
      if (force) {
        mapOfResult.update(keys, (value) => value + List<String>.from(wordList));
      }
    }
  }

  final List<Map<int, List<String>>> dataList = [];
  mapOfResult.forEach((key, value) => dataList.add({key: value}));
  dataList.sort((first, twice) {
    final firstly = first.keys.first;
    final twain = twice.keys.first;
    return firstly < twain ? 0 : -1;
  });
  return {for (var element in dataList) element.keys.first: element.values.first};
}

Map<int, List<String>> task2(String text) {
  final mapOfResult = <int, List<String>>{};
  final wordList = List<String>.empty(growable: true);
  final regExp = RegExp('[А-Яа-яa-zA-z]+');
  final Iterable<Match> matches = regExp.allMatches(text);
  final Set<String> setOfCharacter =
      (matches.map((e) => e.input.substring(e.start, e.end).toLowerCase()).toList()).toSet();

  for (final String i in setOfCharacter) {
    wordList.clear();
    final length = i.length;
    wordList.add(i);
    final key = mapOfResult.containsKey(length);
    if (!key) {
      mapOfResult.putIfAbsent(length, () => List<String>.from(wordList));
    }
    if (key) {
      mapOfResult.update(length, (value) => value + List<String>.from(wordList));
    }
  }

  final List<Map<int, List<String>>> dataList = [];
  mapOfResult.forEach((key, value) => dataList.add({key: value}));

  dataList.sort((first, twice) {
    final firstly = first.keys.first;
    final twain = twice.keys.first;
    return firstly < twain ? 1 : -1;
  });
  return {for (var element in dataList) element.keys.first: element.values.first};
}

Map<String, int> task3(String text) {
  final regExp = RegExp('[А-Яа-яa-zA-z]');
  final mapOfResult = <String, int>{};
  final Iterable<Match> matches = regExp.allMatches(text);
  final Set<String> setOfCharacter =
      (matches.map((e) => e.input.substring(e.start, e.end).toUpperCase()).toList()).toSet();

  for (final String item in setOfCharacter) {
    final keys = RegExp(item, caseSensitive: false);
    final Iterable<Match> matches = keys.allMatches(text);
    final key = matches.length;
    mapOfResult.putIfAbsent(item, () => key);
  }

  final List<Map<String, int>> dataList = [];
  mapOfResult.forEach((key, value) => dataList.add({key: value}));

  dataList.sort((first, twice) {
    final firstly = first.values.first;
    final twain = twice.values.first;
    return firstly < twain ? 1 : -1;
  });

  return {for (var element in dataList) element.keys.first: element.values.first};
}

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
  final map = <int, List<String>>{};
  final chekList = List<String>.empty(growable: true);
  final regExp = RegExp('[а-я]+', caseSensitive: false);
  final Iterable<Match> matches = regExp.allMatches(text);
  final Set<String> newSet = (matches.map((e) => e.input.substring(e.start, e.end).toLowerCase()).toList()).toSet();
  for (final String i in newSet) {
    chekList.clear();
    final enumerator = RegExp('(^|[А-Яа-яa-z])$i(?![А-Яа-яa-z])', caseSensitive: false);
    final Iterable<Match> iterations = enumerator.allMatches(text);
    final iter = iterations.length;
    final force = map.containsKey(iter);
    chekList.add(i);
    if (iter > 1) {
      if (force == false) {
        map.putIfAbsent(iter, () => List<String>.from(chekList));
      }
      if (force == true) {
        map.update(iter, (value) => value + List<String>.from(chekList));
      }
    }
  }

  final List<Map<int, List<String>>> cases = [];
  map.forEach((key, value) => cases.add({key: value}));
  cases.sort((first, twice) {
    final firstly = first.keys.first;
    final twain = twice.keys.first;
    return firstly < twain ? 0 : -1;
  });
  final Map<int, List<String>> newMap = {for (var element in cases) element.keys.first: element.values.first};

  return newMap;
}

Map<int, List<String>> task2(String text) {
  final map = <int, List<String>>{};
  final chekList = List<String>.empty(growable: true);
  final regExp = RegExp('[а-я]+', caseSensitive: false);
  final Iterable<Match> matches = regExp.allMatches(text);
  final Set<String> newSet = (matches.map((e) => e.input.substring(e.start, e.end).toLowerCase()).toList()).toSet();

  for (final String i in newSet) {
    chekList.clear();
    final length = i.length;
    chekList.add(i);
    final key = map.containsKey(length);
    if (key == false) {
      map.putIfAbsent(length, () => List<String>.from(chekList));
    }
    if (key == true) {
      map.update(length, (value) => value + List<String>.from(chekList));
    }
  }

  final List<Map<int, List<String>>> cases = [];
  map.forEach((key, value) => cases.add({key: value}));

  cases.sort((first, twice) {
    final firstly = first.keys.first;
    final twain = twice.keys.first;
    return firstly < twain ? 1 : -1;
  });

  final Map<int, List<String>> newMap = {for (var element in cases) element.keys.first: element.values.first};

  return newMap;
}

Map<String, int> task3(String text) {
  final regExp = RegExp('[а-я]', caseSensitive: false);
  final map = <String, int>{};
  final Iterable<Match> chekList = regExp.allMatches(text);
  final Set<String> newSet = (chekList.map((e) => e.input.substring(e.start, e.end).toUpperCase()).toList()).toSet();

  for (final String i in newSet) {
    final iter = RegExp(i, caseSensitive: false);
    final Iterable<Match> matches = iter.allMatches(text);
    final k = matches.length;
    map.putIfAbsent(i, () => k);
  }

  final List<Map<String, int>> cases = [];
  map.forEach((key, value) => cases.add({key: value}));

  cases.sort((first, twice) {
    final firstly = first.values.first;
    final twain = twice.values.first;
    return firstly < twain ? 1 : -1;
  });

  final Map<String, int> newMap = {for (var element in cases) element.keys.first: element.values.first};

  return newMap;
}


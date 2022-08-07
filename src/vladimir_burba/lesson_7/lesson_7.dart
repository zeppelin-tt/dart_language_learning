import 'dart:collection';
import 'dart:io';

import '../string_utils.dart';

void main() {
  final path =
      '${Directory(Platform.script.toFilePath()).parent.parent.parent.path}${Platform.pathSeparator}_homeworks${Platform.pathSeparator}lesson_7_text.txt'; //..\..\_homeworks\lesson_7_text.txt
  readTxtFile(path).then((value) {
    task1(value);
    print('--------------------------------------------------------------------');
    task2(value);
  });
}

Future<String> readTxtFile(String path) => File(path).readAsString();

void task1(String text) {
  final words = getTextWords(text);
  calcListWords(words).printAsRepeatedWords();
  calcListWordsLength(words).printAsWordLengths();
  calcTextRuLetters(text).printAsNumberOfLetters();
  print('Количество заглавных букв - ${text.getCapitalLettersCount()}');
  print('Количество прописных букв - ${text.getCursiveLettersCount()}');
  print('Количество знаков препинания - ${text.getPunctuationsCount()}');
  print('Количество цифр - ${text.getDigitsCount()}');
}

void task2(String text) {
  text.calcWords().printAsRepeatedWords();
  text.calcWordsLength().printAsWordLengths();
  text.calcRuLetters().printAsNumberOfLetters();
  print('Количество заглавных букв - ${text.getCapitalLettersCount()}');
  print('Количество прописных букв - ${text.getCursiveLettersCount()}');
  print('Количество знаков препинания - ${text.getPunctuationsCount()}');
  print('Количество цифр - ${text.getDigitsCount()}');
}

List<String> getTextWords(String text) {
  const anyWord = r'[\wА-Яа-яЁё]+';
  return getRegExpMatches(text, RegExp(anyWord));
}

List<String> getTextRuLetters(String text) {
  const anyRuLetter = '[А-Яа-яЁё]';
  return getRegExpMatches(text, RegExp(anyRuLetter));
}

List<String> getRegExpMatches(String text, RegExp regExp) {
  return regExp
      .allMatches(text)
      .map(
        (e) => e.group(0)!,
      )
      .toList();
}

Map<int, List<String>> calcListWords(List<String> list) {
  final Map<int, List<String>> result = {};
  final lowerList = list.map((e) => e.toLowerCase()).toList();
  lowerList.toSet().forEach((uniqueWord) {
    final wordCount = lowerList.where((word) => uniqueWord == word).length;
    if (result.containsKey(wordCount)) {
      result.update(wordCount, (value) => value..add(uniqueWord));
    } else {
      result.addAll({
        wordCount: [uniqueWord]
      });
    }
  });
  return SplayTreeMap<int, List<String>>.from(result, (keys1, keys2) => keys2.compareTo(keys1));
}

Map<int, List<String>> calcListWordsLength(List<String> list) {
  final Map<int, List<String>> result = {};
  list.map((e) => e.toLowerCase()).toSet().forEach((uniqueWord) {
    final wordLength = uniqueWord.length;
    if (result.containsKey(wordLength)) {
      result.update(wordLength, (value) => value..add(uniqueWord));
    } else {
      result.addAll({
        wordLength: [uniqueWord]
      });
    }
  });
  return SplayTreeMap<int, List<String>>.from(result, (keys1, keys2) => keys2.compareTo(keys1));
}

Map<String, int> calcTextRuLetters(String text) {
  final letters = getTextRuLetters(text).map((e) => e.toLowerCase()).toList();
  final Map<String, int> result = {};
  letters.toSet().forEach((uniqueLetter) {
    final letterCount = letters.where((letter) => uniqueLetter == letter).length;
    result.putIfAbsent(uniqueLetter, () => letterCount);
  });
  return SplayTreeMap<String, int>.from(result, (keys1, keys2) => result[keys2]!.compareTo(result[keys1]!));
}

extension CustomPrint1 on Map<int, List<String>> {
  void printAsRepeatedWords() {
    forEach((key, value) {
      final pattern1 = getQuantitativePattern(key, ['раз', 'раза', 'раз']);
      final pattern2 =
          getQuantitativePattern(value.length, ['повторяется слово', 'повторяются слова', 'повторяются слова']);
      print('$key $pattern1 $pattern2: ${value.join(', ')}');
    });
  }

  void printAsWordLengths() {
    forEach((key, value) {
      final pattern1 = getQuantitativePattern(key, ['буква', 'буквы', 'букв']);
      final pattern2 = getQuantitativePattern(value.length, ['слове', 'словах', 'словах']);
      print('$key $pattern1 в $pattern2: ${value.join(', ')}');
    });
  }
}

extension CustomPrint2 on Map<String, int> {
  void printAsNumberOfLetters() {
    forEach((key, value) {
      final pattern = getQuantitativePattern(value, ['вхождение', 'вхождения', 'вхождений']);
      print('Буква "${key.toUpperCase()}": $value $pattern');
    });
  }
}

extension SemanticAnalysis on String {
  int getCapitalLettersCount() {
    const anyCapitalLetter = '[A-ZА-ЯЁ]';
    return getRegExpMatches(this, RegExp(anyCapitalLetter)).length;
  }

  int getCursiveLettersCount() {
    const anyCursiveLetter = '[a-zа-яё]';
    return getRegExpMatches(this, RegExp(anyCursiveLetter)).length;
  }

  int getPunctuationsCount() {
    const anyPunctuation = r'[^\sA-Za-z0-9А-Яа-яЁё]';
    return getRegExpMatches(this, RegExp(anyPunctuation)).length;
  }

  int getDigitsCount() {
    const anyDigit = r'\d';
    return getRegExpMatches(this, RegExp(anyDigit)).length;
  }

  Map<int, List<String>> calcWords() {
    return calcListWords(getTextWords(this));
  }

  Map<int, List<String>> calcWordsLength() {
    return calcListWordsLength(getTextWords(this));
  }

  Map<String, int> calcRuLetters() {
    return calcTextRuLetters(this);
  }
}


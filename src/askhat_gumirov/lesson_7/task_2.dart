import 'dart:io';

void main() async {
  await readTxtFile(path).then((value) => string = value);
  string
    ..getRepeatedWords()
    ..getAsWordLengths()
    ..getAsNumberOfLetters();
}

String string = '';
final String path = '${Directory.current.path}/src/_homeworks/lesson_7_text.txt';
Future<String> readTxtFile(String path) => File(path).readAsString();

extension on String {
  void getRepeatedWords() {
    final String tempString = toLowerCase();
    List<String> tempList = [];
    int counter = 0;
    final Map<int, String> resultMap = {};
    tempList = RegExp('[А-Яа-я]+').allMatches(tempString).map((e) => e.group(0)!).toList();
    final Set<String> tempSet = tempList.toSet();
    for (final setElement in tempSet) {
      for (final listElement in tempList) {
        if (setElement == listElement) {
          counter += 1;
        }
      }
      if (counter > 1) {
        resultMap.addAll({counter: setElement});
      }
      counter = 0;
    }
    List<int> sortedKeys = resultMap.keys.toList()..sort();
    sortedKeys = sortedKeys.reversed.toList();
    for (final element in sortedKeys) {
      print('Слово "${resultMap[element]}" повторяется $element раз');
    }
  }
}

extension on String {
  void getAsWordLengths() {
    final String tempString = toLowerCase();
    List<String> tempList = [];
    final Map<int, List<String>> resultMap = {};
    tempList = RegExp('[А-Яа-я]+').allMatches(tempString).map((e) => e.group(0)!).toList()..sort(wordLength);
    tempList = tempList.reversed.toList();

    for (int i = tempList.first.length; i > tempList.last.length; i--) {
      final List<String> tempList2 = [];
      for (final element in tempList) {
        if (element.length == i) {
          tempList2.add(element);
        }
      }
      resultMap.addAll({i: tempList2});
    }
    resultMap.forEach((key, value) {
      print('$key букв в словах "$value"');
    });
  }
}

extension on String {
  void getAsNumberOfLetters() {
    final String tempString = toLowerCase();
    int counter = 0;
    List<String> tempList = [];
    final Map<int, String> resultMap = {};
    Set<String> tempSet = {};
    for (int i = 0; i < length; i++) {
      tempSet.add(this[i].toLowerCase());
    }
    tempSet.removeWhere((element) => element.contains(RegExp('[^А-Яа-я]')));
    tempList = tempSet.toList()..sort();
    tempSet = tempList.toSet()
      ..forEach((element) {
        for (int i = 0; i < length; i++) {
          if (element == tempString[i]) {
            counter += 1;
          }
        }
        resultMap.addAll({counter: element});
        counter = 0;
      });
    resultMap.forEach((key, value) {
      print('Буква "${value.toUpperCase()}" повторяется $key раз');
    });
  }
}

int wordLength(String wordA, String wordB) {
  if (wordA.length > wordB.length) {
    return 1;
  }
  if (wordA.length < wordB.length) {
    return -1;
  }
  return 0;
}

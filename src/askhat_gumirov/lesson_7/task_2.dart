import 'dart:io';
import 'task_1.dart';

void main() async {
  await readTxtFile(path).then((value) => string = value);
  print(string.getRepeatedWords());
  print(string.getAsWordLengths());
  print(string.getAsNumberOfLetters());
}

String string = '';
final String path = '${Directory.current.path}/src/_homeworks/lesson_7_text.txt';
Future<String> readTxtFile(String path) => File(path).readAsString();

extension on String {
  List<ViewModel> getRepeatedWords() {
    final List<ViewModel> modelList = [];
    final String tempString = toLowerCase();
    List<String> tempList = [];
    final Counter counter = Counter(count: 0);
    final Map<int, String> resultMap = {};
    tempList = RegExp('[А-Яа-я]+').allMatches(tempString).map((e) => e.group(0)!).toList();
    final Set<String> tempSet = tempList.toSet();
    for (final setElement in tempSet) {
      for (final listElement in tempList) {
        if (setElement == listElement) {
          counter.increment();
        }
      }
      if (counter.count > 1) {
        resultMap.addAll({counter.count: setElement});
      }
      counter.reset();
    }
    List<int> sortedKeys = resultMap.keys.toList()..sort();
    sortedKeys = sortedKeys.reversed.toList();
    for (final element in sortedKeys) {
      modelList.add(ViewModel(count: element, description: 'повторяется cлово ', value: '"${resultMap[element]}"'));
    }
    return modelList;
  }
}

extension on String {
  List<ViewModel> getAsWordLengths() {
    final List<ViewModel> modelList = [];
    final String tempString = toLowerCase();
    List<String> tempList = [];
    final Map<int, List<String>> resultMap = {};
    tempList = RegExp('[А-Яа-я]+').allMatches(tempString).map((e) => e.group(0)!).toList()..sort(wordLength);
    tempList = tempList.reversed.toList();

    for (int i = tempList.first.length; i > tempList.last.length; i--) {
      final List<String> tempList2 = [];
      for (final element in tempList) {
        if (element.length == i && !tempList2.contains(element)) {
          tempList2.add(element);
        }
      }
      resultMap.addAll({i: tempList2});
    }
    resultMap.forEach((key, value) {
      modelList.add(ViewModel(count: key, description: 'букв в словах', value: value.toString()));
    });
    return modelList;
  }
}

extension on String {
  List<ViewModel> getAsNumberOfLetters() {
    final List<ViewModel> modelList = [];
    final String tempString = toLowerCase();
    final Counter counter = Counter(count: 0);
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
            counter.increment();
          }
        }
        resultMap.addAll({counter.count: element});
        counter.reset();
      });
    resultMap.forEach((key, value) {
      modelList.add(ViewModel(count: key, description: 'раз повторяется буква', value: '"${value.toUpperCase()}"'));
    });
    return modelList;
  }
}

class Counter {
  int count;

  Counter({required this.count});

  int increment() {
    count += 1;
    return count;
  }

  int decrement() {
    count -= 1;
    return count;
  }

  int reset() {
    count = 0;
    return count;
  }
}

import 'dart:io';

void main() async {
  await readTxtFile(path).then(task1);
  mapOfDuplicates
    ..printAsNumberOfLetters()
    ..printAsRepeatedWords()
    ..printAsWordLengths();
  final String string = 'АasDDsqweD'..capitalLettersCounter();
  print(string);
  final String italicString = 'ssawE'..italicLetterCounter();
  print(italicString);
  final String punctuationString = 'И вот случилось то, что и должно было случиться,.!?'..punctuationMarksCounter();
  print(punctuationString);
  final String nubmersString = 'фыв12321ыв4'..numbersCounter();
  print(nubmersString);
}

final String path = '${Directory.current.path}/src/_homeworks/lesson_7_text.txt';
Future<String> readTxtFile(String path) => File(path).readAsString();
late List<String> listOfWords;
Map<int, List<String>> mapOfDuplicates = {};
Set<String> setOfWords = {};
List<String> listOfLowWords = [];

// Составляем мапу из слов, которые хотя бы раз повторяются где ключ - количество повторений
int key = 0;
void task1(String text) {
  listOfWords = RegExp('[А-Яа-я]+').allMatches(text).map((e) => e.group(0)!).toList();
  for (final element in listOfWords) {
    listOfLowWords.add(element.toLowerCase());
  }
  setOfWords = listOfLowWords.toSet();
  for (final element in setOfWords) {
    final List<String> tempList = [];
    int counter = 0;
    for (int j = 0; j < listOfLowWords.length; j++) {
      if (element == listOfLowWords[j]) {
        counter += 1;
        tempList.add(element);
      }
    }
    if (counter > 1) {
      mapOfDuplicates.addAll({counter: tempList});
    }
  }
}

extension on Map<int, List<String>> {
  void printAsRepeatedWords() {
    forEach((key, value) {
      print('$key раз повторяются слова "${value[0]}"');
    });
  }
}

// Сортируем и считаем сколько букв в каждом слове

extension on Map<int, List<String>> {
  void printAsWordLengths() {
    final List<String> tempList = [];
    forEach((key, value) {
      tempList.addAll(value);
    });
    tempList.toSet();
    String string = '';
    int elementLength = 0;
    tempList
      ..sort(wordLength)
      ..forEach((element) {
        if (element.length == elementLength) {
          return;
        }
        for (int i = 0; i < listOfWords.length; i++) {
          if (element.length == listOfWords[i].length && element != listOfWords[i]) {
            string.contains(element) ? string = string : string += '${listOfWords[i]} ';
          }
        }
        string == '' ? print('конец') : print('${element.length} букв в словах: $string');

        elementLength = element.length;
        string = '';
      });
    print(string);
  }
}

extension on Map<int, List<String>> {
  void printAsNumberOfLetters() {
    //Загружаем все буквы с мапы в лист
    final List<String> tempList = [];
    forEach((key, value) {
      for (final element in value) {
        for (int i = 0; i != element.length; i++) {
          tempList.add(element[i].toLowerCase());
        }
      }
    });
    //*********************************
    tempList.sort();
    final Set<String> tempSet = tempList.toSet();
    final Map<int, List<String>> mapOfLetters = {};
    //Пробегаемся по сету и сравниваем с листом, если есть совпадения - считаем и кладем в итоговый мап
    for (final elementInSet in tempSet) {
      int counter = 0;
      final List<String> tempList2 = [];
      for (final elementInList in tempList) {
        if (elementInSet == elementInList) {
          counter += 1;
          tempList2.add(elementInSet);
        }
      }
      mapOfLetters.addAll({counter: tempList2});
    }
    mapOfLetters.forEach((key, value) {
      print('Буква "${value.first.toUpperCase()}" $key вхождений');
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

extension on String {
  void capitalLettersCounter() {
    int counter = 0;
    for (int i = 0; i < length; i++) {
      if (this[i].contains(RegExp('[А-ЯA-Z]'))) {
        counter += 1;
      }
    }
    print('В строке $counter заглавных букв');
  }
}

extension on String {
  void italicLetterCounter() {
    int counter = 0;
    for (int i = 0; i < length; i++) {
      if (this[i].contains(RegExp('/__(?:(?!__).)+__/'))) {
        counter += 1;
      }
    }
    print('В строке $counter курсивных букв');
  }
}

extension on String {
  void punctuationMarksCounter() {
    int counter = 0;
    for (int i = 0; i < length; i++) {
      if (this[i].contains(RegExp(r'[.!?,\\-]'))) {
        counter += 1;
      }
    }
    print('В строке $counter знаков препинания');
  }
}

extension on String {
  void numbersCounter() {
    int counter = 0;
    for (int i = 0; i < length; i++) {
      if (this[i].contains(RegExp('[0-9]'))) {
        counter += 1;
      }
    }
    print('В строке $counter цифр');
  }
}

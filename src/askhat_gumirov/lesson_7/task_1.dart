import 'dart:io';

void main() async {
  await readTxtFile(path).then(task1);
  print(mapOfDuplicates.printAsRepeatedWords());
  print(mapOfDuplicates.printAsWordLengths());
  print(mapOfDuplicates.printAsNumberOfLetters());
  const String string = 'AAAaaSasSDАА';
  print(string);
  print(string.capitalLettersCounter());
  final String italicString = 'ssawE'..italicLetterCounter();
  print(italicString);
  print(italicString.italicLetterCounter());
  final String punctuationString = 'И вот случилось то, что и должно было случиться,.!?'..punctuationMarksCounter();
  print(punctuationString);
  print(punctuationString.punctuationMarksCounter());
  final String nubmersString = 'фыв12321ыв4'..numbersCounter();
  print(nubmersString);
  print(nubmersString.numbersCounter());
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
  List<ViewModel> printAsRepeatedWords() {
    final List<ViewModel> modelList = [];
    forEach((key, value) {
      modelList.add(ViewModel(count: key, description: 'раз повторяются слова', value: value[0]));
    });

    return modelList;
  }
}

// Сортируем и считаем сколько букв в каждом слове

extension on Map<int, List<String>> {
  List<ViewModel> printAsWordLengths() {
    final List<ViewModel> modelList = [];
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
          if (element.length == listOfWords[i].length) {
            string.contains(listOfWords[i]) ? string = string : string += '${listOfWords[i]} ';
          }
        }
        modelList.add(ViewModel(count: element.length, description: 'букв в словах', value: string));
        elementLength = element.length;
        string = '';
      });
    return modelList;
  }
}

extension on Map<int, List<String>> {
  List<ViewModel> printAsNumberOfLetters() {
    //Загружаем все буквы с мапы в лист
    final List<String> tempList = [];
    final List<ViewModel> modelList = [];
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
      modelList.add(ViewModel(count: key, description: 'вхождений', value: value.first.toUpperCase()));
    });
    return modelList;
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
  ViewModel capitalLettersCounter() {
    int count;
    count = RegExp('[A-ZА-Я]').allMatches(this).length;
    return ViewModel(count: count, description: 'заглавных букв', value: 'в строке');
  }
}

extension on String {
  ViewModel italicLetterCounter() {
    int count;
    count = RegExp('/__(?:(?!__).)+__/').allMatches(this).length;
    return ViewModel(count: count, description: 'курсивных букв', value: 'в строке');
  }
}

extension on String {
  ViewModel punctuationMarksCounter() {
    int count;
    count = RegExp(r'[.!?,\\-]').allMatches(this).length;
    return ViewModel(count: count, description: 'знаков препинания', value: 'в строке');
  }
}

extension on String {
  ViewModel numbersCounter() {
    int count;
    count = RegExp('[0-9]').allMatches(this).length;
    return ViewModel(count: count, description: 'цифр', value: 'в строке');
  }
}

//Единая модель для отображения данных всех заданий
class ViewModel {
  final int count;
  final String description;
  final String value;

  ViewModel({required this.count, required this.description, required this.value});

  @override
  String toString() {
    return '$count $description $value \n';
  }
}

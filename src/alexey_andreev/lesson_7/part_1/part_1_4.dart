import 'dart:io';

void main() {
  final File file1 = File(r'C:\project\dart_application\bin\lesson_7_text.txt');
  final String text = file1.readAsStringSync();
  print(text.quantityOfCapitals);
  print(text.quantityOfCursives);
  print(text.quantityOfPunctMarks);
  print(text.quantityOfDigits);
}

extension QuantityMethods on String {
  String get quantityOfCapitals {
    final RegExp capital = RegExp('[А-Я]');
    final Iterable<Match> matchesCapital = capital.allMatches(this);
    final quantityOfCapitals = matchesCapital.length;
    return 'В этом тексте $quantityOfCapitals заглавных букв';
  }

  String get quantityOfCursives {
    final RegExp cursive = RegExp('[а-я]');
    final Iterable<Match> matchesCursive = cursive.allMatches(this);
    final quantityOfCursives = matchesCursive.length;
    return 'В этом тексте $quantityOfCursives прописных букв';
  }

  String get quantityOfPunctMarks {
    final RegExp punctMarks = RegExp('[^0-9а-яА-Я_ ]');
    final Iterable<Match> matchesPunctMarks = punctMarks.allMatches(this);
    final quantityOfPunctMarks = matchesPunctMarks.length;
    return 'В этом тексте $quantityOfPunctMarks знаков препинания';
  }

  String get quantityOfDigits {
    final RegExp digits = RegExp('[0-9]');
    final Iterable<Match> matchesDigits = digits.allMatches(this);
    final quantityOfDigits = matchesDigits.length;
    return 'В этом тексте $quantityOfDigits цифр';
  }
}

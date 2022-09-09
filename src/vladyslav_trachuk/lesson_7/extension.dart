extension PrintingAsRepeatedWords on Map<int, List<String>> {
  void printAsRepeatedWords() {
    forEach((key, value) {
      print('$key раз повторились слова: ${value.join('/')}');
    });
  }
}

extension PrintingAsWordLengths on Map<int, List<String>> {
  void printAsWordLengths() {
    forEach((key, value) {
      print('$key букв в словах: ${value.join(', ')}');
    });
  }
}

extension PrintingAsNumberOfLetters on Map<String, int> {
  void printAsNumberOfLetters() {
    forEach((key, value) {
      print('$key: $value вхождений ');
    });
  }
}

extension CapitalLetter on String {
  void capitalLatter() {
    final RegExp capital = RegExp('[А-Я]');
    final Iterable<Match> letters = capital.allMatches(this);
    final capitalLatter = letters.length;
    print('Колличество заглавных букв = $capitalLatter');
  }
}

extension CursiveLetter on String {
  void cursiveLetter() {
    final RegExp cursive = RegExp('[а-я]');
    final Iterable<Match> letters = cursive.allMatches(this);
    final cursiveLetter = letters.length;
    print('Колличество прописных букв = $cursiveLetter');
  }
}

extension Punctuation on String {
  void punctuation() {
    final RegExp pointing = RegExp('[^0-9а-яА-Я_ ]');
    final Iterable<Match> points = pointing.allMatches(this);
    final punctuation = points.length;
    print('Колличество знаков пунктуации = $punctuation');
  }
}

extension Numbers on String {
  void numbers() {
    final RegExp num = RegExp('[0-9]');
    final Iterable<Match> numeration = num.allMatches(this);
    final numbers = numeration.length;
    print('Колличество цифр =  $numbers');
  }
}

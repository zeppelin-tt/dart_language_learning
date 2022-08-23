void main() {
  final buffer = StringBuffer();

  try {
    print('String4'.firstDigit);
  } on ZeroDigitException catch (e) {
    print(e.message);
    rethrow;
  } on StartWithCapitalException catch (e) {
    print(e.message);
    rethrow;
  } finally {
    print('the end');
  }
}

extension on String {
  String get firstDigit {
    final withDigit = RegExp(r'^\D+\d').stringMatch(this);
    if (withDigit == null) {
      throw ZeroDigitException('нет цифр!');
    }
    if (startsWith(RegExp('^[A-Z]'))) {
      throw StartWithCapitalException('строка начинается с заглавной буквы!');
    }
    return withDigit[withDigit.length - 1];
  }
}

class ZeroDigitException implements Exception {
  final String message;

  ZeroDigitException(this.message);
}

class StartWithCapitalException implements Exception {
  final String message;

  StartWithCapitalException(this.message);
}

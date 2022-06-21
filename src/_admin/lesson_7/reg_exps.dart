extension StringExtensions on String {
  String get firstDigit {
    final withDigit = RegExp(r'^\D+\d').stringMatch(this);
    if (withDigit == null) {
      return '';
    }
    return withDigit[withDigit.length - 1];
  }
}

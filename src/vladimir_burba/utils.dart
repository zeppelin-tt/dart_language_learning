int integerDivision(int numerator, int denominator) {
  return numerator ~/ denominator;
}

int sumOfDigits(int number) {
  int res = 0;
  do {
    res += number % 10;
    number ~/= 10;
  } while (number != 0);
  return res;
}

DateTime fewYearsAgo(final int years) {
  return DateTime(
      DateTime.now().year - years, DateTime.now().month, DateTime.now().day);
}

int yearsPassed(final DateTime fromDate){
  return DateTime.now().difference(fromDate).inDays ~/ 365;
}
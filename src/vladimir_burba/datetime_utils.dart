DateTime getDateYearsAgo(int years) {
  return DateTime(DateTime.now().year - years, DateTime.now().month, DateTime.now().day);
}

int yearsPassed(DateTime fromDate) {
  return DateTime.now().difference(fromDate).inDays ~/ 365;
}

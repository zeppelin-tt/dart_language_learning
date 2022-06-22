void main() {
  print(isCorrect(3));
  print(isCorrect(7));
  print(getDouble(0));
  print(getDouble(20));
  print(getDouble2(2));
  print(getDouble(10));
  print(partOfHour(7));
  print(partOfHour(17));
  print(partOfHour(31));
  print(partOfHour(49));
  print(getDayOfWeekAndTime(3, 3, Lang.ru));
  print(getDayOfWeekAndTime(6, 9, Lang.eng));
  print(getDayOfWeekAndTime(11, 12, Lang.eng));
  print(getDayOfWeekAndTime(5, 24, Lang.ru));
  print(getDayOfWeekAndTime(3, 15, Lang.eng, onResult: printWithStars));
}

String isCorrect(int a) {
  if (a > 0 && a < 5) {
    return 'Correct';
  }
  return 'Incorrect';
}

double getDouble(int a) {
  if (a == 0 || a == 2) {
    return (a + 7).toDouble();
  }
  return a / 10;
}

double getDouble2(int a) {
  return a == 0 || a == 2 ? (a + 7).toDouble() : a / 10;
}

String partOfHour(int min) {
  if (min >= 0 && min <= 14) {
    return 'В первую четверть часа';
  }
  if (min >= 15 && min <= 30) {
    return 'Во вторую четверть часа';
  }
  if (min >= 31 && min <= 45) {
    return 'В третью четверть часа';
  }
  return 'В четвертую четверть часа';
}

String getDayOfWeekAndTime(
  int day,
  int time,
  Lang lang, {
  ResultCallback? onResult,
}) {
  String result = '';
  if (!checkDayAndTime(day, time, lang)) {
    return result;
  }

  final stringDay = getDay(day, lang);
  final stringTime = getTime(time, lang);
  result = '$stringDay, $stringTime';

  onResult?.call(result);
  return result;
}

enum Lang { ru, eng }

typedef ResultCallback = void Function(String result);

void printWithStars(String result) {
  print('***** $result *****');
}

bool checkDayAndTime(int day, int time, Lang lang) {
  if (day < 1 || day > 7) {
    print(lang == Lang.eng ? 'Wrong day' : 'Неверный день');
    return false;
  }
  if (time < 0 || time > 23) {
    print(lang == Lang.eng ? 'Wrong time' : 'Неверное время');
    return false;
  }
  return true;
}

String getDay(int day, Lang lang) {
  if (day == 1) {
    return lang == Lang.eng ? 'Monday' : 'Понедельник';
  } else if (day == 2) {
    return lang == Lang.eng ? 'Tuesday' : 'Вторник';
  } else if (day == 3) {
    return lang == Lang.eng ? 'Wednesday' : 'Среда';
  } else if (day == 4) {
    return lang == Lang.eng ? 'Thursday' : 'Четверг';
  } else if (day == 5) {
    return lang == Lang.eng ? 'Friday' : 'Пятница';
  } else {
    return lang == Lang.eng ? 'Weekend' : 'Выходной';
  }
}

String getTime(int time, Lang lang) {
  if (time >= 0 && time < 8) {
    return lang == Lang.eng ? 'night' : 'ночь';
  } else if (time >= 8 && time < 12) {
    return lang == Lang.eng ? 'morning' : 'утро';
  } else if (time >= 12 && time < 20) {
    return lang == Lang.eng ? 'afternoon' : 'день';
  } else {
    return lang == Lang.eng ? 'evening' : 'вечер';
  }
}

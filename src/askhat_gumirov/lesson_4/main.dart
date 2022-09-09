void main() {
// Задание 1;
  print(trueOrFalse(4));

// Задание 2;

  print(returnDouble(5));
  print(returnDoubleSecond(5));

// Задание 3;

  print(partOfHour(46));

// Задание 4;

  print(daysOfWeek((value) {}, time: 111, day: 2, lang: Lang.ru));
  print(daysOfWeek(print, time: 1, day: 1, lang: Lang.ru));
}

enum Lang {
  ru,
  eng,
}

// Задание №1
bool trueOrFalse(int value) {
  if (value > 0 && value < 5) {
    return true;
  }
  return false;
}

//Задание №2
double returnDouble(int value) {
  if (value == 0 || value == 2) {
    double doubleValue = value.toDouble();
    doubleValue += 7;
    return doubleValue;
  }
  return value / 10;
}

double returnDoubleSecond(int value) {
  double doubleValue = value.toDouble();
  return value == 0 || value == 2 ? doubleValue += 7 : doubleValue /= 10;
}

//Задание №3
int partOfHour(int value) {
  int? part;

  if (value > 0 && value <= 15) {
    part = 1;
  }
  if (value > 15 && value <= 30) {
    part = 2;
  }
  if (value > 30 && value <= 45) {
    part = 3;
  }
  if (value > 45 && value < 60) {
    part = 4;
  }
  return part!;
}
//Задание №4

String daysOfWeek(
  Function returnResult, {
  required int time,
  required int day,
  required Lang lang,
}) {
  String result = '';
  switch (day) {
    case 1:
      {
        lang == Lang.ru
            ? result = 'Понедельник ${getPartOfDay(time, lang)}'
            : result = 'Monday ${getPartOfDay(time, lang)}';
        break;
      }
    case 2:
      {
        lang == Lang.ru
            ? result = 'Вторник ${getPartOfDay(time, lang)}'
            : result = 'Tuesday ${getPartOfDay(time, lang)}';
        break;
      }
    case 3:
      {
        lang == Lang.ru
            ? result = 'Среда ${getPartOfDay(time, lang)}'
            : result = 'Wednesday $day ${getPartOfDay(time, lang)}';
        break;
      }
    case 4:
      {
        lang == Lang.ru
            ? result = 'Четверг ${getPartOfDay(time, lang)}'
            : result = 'Thursday ${getPartOfDay(time, lang)}';

        break;
      }
    case 5:
      {
        lang == Lang.ru
            ? result = 'Пятница ${getPartOfDay(time, lang)}'
            : result = 'Friday ${getPartOfDay(time, lang)}';
        break;
      }
    case 6:
      {
        lang == Lang.ru
            ? result = 'Суббота ${getPartOfDay(time, lang)}'
            : result = 'Weekend ${getPartOfDay(time, lang)}';
        break;
      }
    case 7:
      {
        lang == Lang.ru
            ? result = 'Воскресение ${getPartOfDay(time, lang)}'
            : result = 'Weekend ${getPartOfDay(time, lang)}';
        break;
      }
    default:
      {
        result = 'Вы ввели неверный день >>> $day ${getPartOfDay(time, lang)}';
      }
  }
  returnResult(result);
  return result;
}
//Вспомогательная функция к заданию №4, позволяющая узнать, к какой части дня относится введенное значение

String getPartOfDay(int dayNumber, Lang lang) {
  String result = '';
  if (dayNumber > 0 && dayNumber <= 8) {
    lang == Lang.ru ? result = 'Ночь $dayNumber' : result = 'Night $dayNumber';
  }
  if (dayNumber > 8 && dayNumber <= 12) {
    lang == Lang.ru ? result = 'Утро $dayNumber' : result = 'Morning $dayNumber';
  }
  if (dayNumber > 12 && dayNumber <= 20) {
    lang == Lang.ru ? result = 'День $dayNumber' : result = 'Day $dayNumber';
  }
  if (dayNumber > 20 && dayNumber < 23) {
    lang == Lang.ru ? result = 'Вечер $dayNumber' : result = 'Evening $dayNumber';
  }
  if (dayNumber > 23 || dayNumber < 0) {
    lang == Lang.ru ? result = 'Вы ввели неверный час >>> $dayNumber' : result = 'Incorrect value $dayNumber';
  }
  return result;
}

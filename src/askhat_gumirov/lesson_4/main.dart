void main() {
// Задание 1;
  print(trueOrFalse(4));

// Задание 2;

  print(returnDouble(5));
  print(returnDoubleSecond(5));

// Задание 3;

  print(partOfHour(46));

// Задание 4;

  print(daysOfWeek((value) {}, time: 1, day: 1, lang: Lang.ru));
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
            ? result = 'Понедельник ${partOfDayFunc(time, lang)}'
            : result = 'Monday ${partOfDayFunc(time, lang)}';
        partOfDayFunc(time, lang);
        break;
      }
    case 2:
      {
        lang == Lang.ru
            ? result = 'Вторник ${partOfDayFunc(time, lang)}'
            : result = 'Tuesday ${partOfDayFunc(time, lang)}';
        partOfDayFunc(time, lang);
        break;
      }
    case 3:
      {
        lang == Lang.ru
            ? result = 'Среда ${partOfDayFunc(time, lang)}'
            : result = 'Wednesday $day ${partOfDayFunc(time, lang)}';

        break;
      }
    case 4:
      {
        lang == Lang.ru
            ? print('Четверг ${partOfDayFunc(time, lang)}')
            : print('Thursday ${partOfDayFunc(time, lang)}');
        partOfDayFunc(time, lang);
        break;
      }
    case 5:
      {
        lang == Lang.ru
            ? print('Пятница ${partOfDayFunc(time, lang)}')
            : print('Friday ${partOfDayFunc(time, lang)}');
        partOfDayFunc(time, lang);
        break;
      }
    case 6:
      {
        lang == Lang.ru
            ? print('Суббота ${partOfDayFunc(time, lang)}')
            : print('Weekend ${partOfDayFunc(time, lang)}');
        partOfDayFunc(time, lang);
        break;
      }
    case 7:
      {
        lang == Lang.ru
            ? print('Воскресение ${partOfDayFunc(time, lang)}')
            : print('Weekend ${partOfDayFunc(time, lang)}');
        partOfDayFunc(time, lang);
        break;
      }
    default:
      {
        result = 'Вы ввели неверный день >>> $day ${partOfDayFunc(time, lang)}';
      }
  }
  returnResult(result);
  return result;
}
//Вспомогательная функция к заданию №4, позволяющая узнать, к какой части дня относится введенное значение

String partOfDayFunc(int value, Lang lang) {
  String result = '';
  if (value > 0 && value <= 8) {
    lang == Lang.ru ? result = 'Ночь $value' : result = 'Night $value';
  }
  if (value > 8 && value <= 12) {
    lang == Lang.ru ? result = 'Утро $value' : result = 'Morning $value';
  }
  if (value > 12 && value <= 20) {
    lang == Lang.ru ? result = 'День $value' : result = 'Day $value';
  }
  if (value > 20 && value < 23) {
    lang == Lang.ru ? result = 'Вечер $value' : result = 'Evening $value';
  }
  if (value > 23 || value < 0) {
    lang == Lang.ru
        ? result = 'Вы ввели неверный час >>> $value'
        : result = 'Incorrect value $value';
  }
  return result;
}

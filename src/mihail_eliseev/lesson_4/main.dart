import 'dart:math';

void main() {
  final random = Random();
  print(rightOrWrong(random.nextInt(10)));
  print(doDouble(random.nextInt(10)));
  print(doDouble2(random.nextInt(10)));
  print(hourPart(random.nextInt(59)));
  print(daysAndHours(day, hour, Lang.ru));
  print(daysAndHours(day, hour, Lang.eng));
  print(daysAndHours(day, hour, Lang.ru, printCallBack));
  print(daysAndHours(day, hour, Lang.eng, printCallBack));
}

//1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'

String rightOrWrong(int a) {
  if (a > 0 && a < 5) {
    return 'Неверно';
  }
  return 'Верно';
}

//2. Создайте функцию, получающие на вход int и возвращающие double *************

double doDouble(int a) {
  if (a == 0 || a == 2) {
    return a + 7;
  }
  return a % 10;
}

double doDouble2(int a) {
  if (a == 0 || a == 2) {
    return a + 7;
  } else {
    return a % 10;
  }
}

//3. Часть часа ****************************

String hourPart(int min) {
  if (min >= 0 && min <= 15) {
    return 'Первая часть часа';
  }
  if (min > 15 && min <= 30) {
    return 'Вторая часть часа';
  }
  if (min > 30 && min <= 45) {
    return 'Третья часть часа';
  }
  return 'Четвёртая часть часа';
}

//4. Дни недели ************************
final random = Random();
final hour = random.nextInt(23);
final day = random.nextInt(6) + 1;

enum Lang { ru, eng }

String? days(num day, Lang lang) {
  switch (lang) {
    case Lang.ru:
      switch (day) {
        case 1:
          return 'Понедельник';
        case 2:
          return 'Вторник';
        case 3:
          return 'Среда';
        case 4:
          return 'Четверг';
        case 5:
          return 'Пятница';
        case 6:
        case 7:
          return 'Выходной';
        default:
          return 'Неправильно выбран день';
      }
    case Lang.eng:
      switch (day) {
        case 1:
          return 'Monday';
        case 2:
          return 'Tuesday';
        case 3:
          return 'Wednesday';
        case 4:
          return 'Thursday';
        case 5:
          return 'Friday';
        case 6:
        case 7:
          return 'Weekend';
        default:
          return 'Wrong day choose';
      }
  }
}

String? hours(num hour, Lang lang) {
  switch (lang) {
    case Lang.ru:
      if (hour > 0 && hour <= 8) {
        return 'Ночь';
      } else if (hour > 8 && hour <= 12) {
        return 'Утро';
      } else if (hour > 12 && hour <= 20) {
        return 'День';
      } else if (hour > 20 && hour <= 23) {
        return 'Вечер';
      } else {
        return 'Неправильно выбрано время';
      }
    case Lang.eng:
      if (hour > 0 && hour <= 8) {
        return 'Night';
      } else if (hour > 8 && hour <= 12) {
        return 'Morning';
      } else if (hour > 12 && hour <= 20) {
        return 'Day';
      } else if (hour > 20 && hour <= 23) {
        return 'Evening';
      } else {
        return 'Wrong time choose';
      }
  }
}

typedef CallBack = void Function(String callBack);

void printCallBack(String result) {
  print(result);
}

String? daysAndHours(num day, num hour, Lang lang, [CallBack? onResult]) {
  final result = '${days(day, lang)}, ${hours(hour, lang)}';
  onResult?.call(result);
  return '${days(day, lang)}, ${hours(hour, lang)}';
}

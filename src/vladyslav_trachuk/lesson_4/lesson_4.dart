//        1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
// Если переменная a больше нуля и меньше 5-ти
String checkNum(int num) {
  print('Ты ввел число $num и оно =');
  if (num > 0 && num < 5) {
    print('Верно');
  }
  return 'Не верно\nПопробуй еще раз.';
}

//        2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернатрного оператора и конструкции if-else

double intToDoubleAgain(int num) {
  return num == 0 || num == 2 ? (num + 7).toDouble() : num / 10;
}
//Тернарную операция имеет следующий синтаксис: [первый операнд - условие] ? [второй операнд] : [третий операнд].

double intToDouble(int num) {
  if (num == 0 || num == 2) {
    return (num + 7).toDouble();
  }
  return num / 10;
}

//       3. Часть часа
// В переменной min лежит число от 0 до 59.
// Определите в какую четверть часа попадает это число (в первую, вторую, третью или четвертую).
String whatTime(int min) {
  if (min <= 0 || min >= 61) {
    return 'Ошибка';
  } else if (min >= 0 && min <= 15) {
    return 'Данный промежуток попадает в первую четверть часа';
  } else if (min >= 16 && min <= 30) {
    return 'Данный промежуток попадает во вторую четверть часа';
  } else if (min >= 31 && min <= 45) {
    return 'Данный промежуток попадает в третью четверть часа';
  } else {
    return 'Данный промежуток попадает в четвертую четверть часа';
  }
}

//      4. Дни недели;
// аргументы функции
// int - номера дня недели
// int - время, часов
// enum Lang - язык (ru, eng)
// Если число равно 1, выводим то это 'Понедельник', 2 –”Вторник” и так далее. Если 6 или 7 – “Выходной”.
// Так же по времени - от 0 до 8 - ночь, от 8 до 12 - утро, от 12 до 20 день, от 20 до 23 - вечер.
// если Lang.ru - выводить на русском, если Lang.eng - на английском
//
// а) Обработать невалидные аргументы
// б) функция должна возвращать например, 'Понедельник, день' или то же самое на английском языке
// в) сделать у функции необязательный четвертый аргумент - коллбек, возвращающий результат.
// г) дважды вызвать функцию и вывести в консоль значения из коллбека и из ретерна
// д) создание вспомогательных функций приветствуется
enum Lang { ru, eng }

String timeOfDay(int time, Lang lang) {
  switch (lang) {
    case Lang.ru:
      if (time < 0 || time > 25) {
        return 'Задание 4 Ошибка - не верно указано время!';
      } else if (time > 0 && time <= 8) {
        return 'Задание 4 Сейчас ночь';
      } else if (time > 8 && time <= 12) {
        return 'Задание 4 Сейчас утро';
      } else if (time > 12 && time <= 20) {
        return 'Задание 4 Сейчас день';
      } else {
        return 'Задание 4 Сейчас вечер';
      }
    case Lang.eng:
      if (time < 0 || time > 25) {
        return 'Error - time is not correct!';
      } else if (time > 0 && time <= 8) {
        return "It's night now";
      } else if (time > 8 && time <= 12) {
        return "It's morning now";
      } else if (time > 12 && time <= 20) {
        return "It's day now";
      } else {
        return 'Error - time is not correct!';
      }
  }
}

dynamic giveMeToday(
  int day,
  int hour,
  Lang lang,
) {
  String giveMeHour(int checkHour) {
    switch (lang) {
      case Lang.eng:
        if (checkHour > 0 && checkHour < 24) {
          if (checkHour < 8) {
            return 'Night';
          } else if (checkHour < 12) {
            return 'Morning';
          } else if (checkHour < 20) {
            return 'Day';
          } else {
            return 'Evening';
          }
        } else {
          return 'Error!';
        }
      case Lang.ru:
        if (checkHour > 0 && checkHour <= 24) {
          if (checkHour <= 8) {
            return 'Ночь';
          } else if (checkHour <= 12) {
            return 'Утро';
          } else if (checkHour <= 20) {
            return 'День';
          } else {
            return 'Вечер';
          }
        } else {
          return 'Ошибка!';
        }
    }
  }

  dynamic giveMeDay(int day) {
    switch (lang) {
      case Lang.eng:
        if (day <= 0 && day >= 8) {
          if (day == 1) {
            return 'Понедельник';
          } else if (day == 2) {
            return 'Вторник';
          } else if (day == 3) {
            return 'Среда';
          } else if (day == 4) {
            return 'Четверг';
          } else if (day == 5) {
            return 'Пятница';
          } else if (day == 6) {
            return 'Суббота';
          } else if (day == 7) {
            return 'Воскресенье';
          } else {
            return 'Ошибка';
          }
        }
        break;
      case Lang.ru:
        if (day <= 0 && day >= 8) {
          if (day == 1) {
            return 'Monday';
          } else if (day == 2) {
            return 'Tuesday';
          } else if (day == 3) {
            return 'Wednesday';
          } else if (day == 4) {
            return 'Thursday';
          } else if (day == 5) {
            return 'Friday';
          } else if (day == 6) {
            return 'Saturday';
          } else if (day == 7) {
            return 'Sunday';
          } else {
            return 'Error!';
          }
        }
    }
  }

  final thisDay = giveMeDay(day);
  final thisHour = giveMeHour(hour);
  switch (lang) {
    case Lang.eng:
      if (thisHour == 'Error!' || thisDay == 'Error!') {
        return 'Error!';
      } else {
        return 'Today is $thisDay and it`s $thisHour';
      }
    case Lang.ru:
      if (thisHour == 'Ошибка!' || thisDay == 'Ошибка!') {
        return 'Ошибка!';
      } else {
        return 'Сегодня $thisDay и сейчас $thisHour';
      }
  }
}

void main() {
  print(checkNum(10));
  print(whatTime(24));
  print(timeOfDay(-1, Lang.ru));
  print(timeOfDay(12, Lang.eng));
  print(timeOfDay(28, Lang.ru));
  print(giveMeToday(3, 21, Lang.ru));
}

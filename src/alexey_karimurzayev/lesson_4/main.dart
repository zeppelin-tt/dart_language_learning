// 1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
// Если переменная a больше нуля и меньше 5-ти

String trueOrFalse(int a) {
  if (a > 0 && a < 5) {
    return 'Верно!';
  } else {
    return 'Неверно!';
  }
}

// 2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернатрного оператора и конструкции if-else

double intToDoubleIfElse(int a) {
  if (a == 0 || a == 2) {
    return a + 7;
  } else {
    return a / 10;
  }
}

double intToDoubleTernary(int a) {
  return (a == 0 || a == 2) ? a + 7 : a / 10;
}

// 3. Часть часа
// В переменной min лежит число от 0 до 59.
// Определите в какую четверть часа попадает это число (в первую, вторую, третью или четвертую).

String? quarterHour(int h) {
  if (h < 0 && h > 59) {
    return 'Не корректный ввод';
  } else if (h < 0 && h <= 14) {
    return 'Первая четверть часа';
  } else if (h >= 15 && h <= 29) {
    return 'Вторая четверть часа';
  } else if (h >= 30 && h <= 44) {
    return 'Третья четверть часа';
  } else if (h >= 45 && h <= 59) {
    return 'Четвертая четверть часа';
  }
  return null;
}

// 4. Дни недели;
// аргументы функции
// int - номера дня недели
// int - время, часов
// enum Lang - язык (ru, eng)
//
// Если число равно 1, выводим то это 'Понедельник', 2 –”Вторник” и так далее. Если 6 или 7 – “Выходной”.
// Так же по времени - от 0 до 8 - ночь, от 8 до 12 - утро, от 12 до 20 день, от 20 до 23 - вечер.
// если Lang.ru - выводить на русском, если Lang.eng - на английском
//
// а) Обработать невалидные аргументы
// б) функция должна возвращать например, 'Понедельник, день' или то же самое на английском языке
// в) сделать у функции необязательный четвертый аргумент - коллбек, возвращающий результат.
// г) дважды вызвать функцию и вывести в консоль значения из коллбека и из ретерна
// д) создание вспомогательных функций приветствуется

enum Lang {
  ru,
  eng,
}

String? weekday(int day, Lang lang) {
  switch (lang) {
    case Lang.ru:
      switch (day) {
        case 0:
          return 'Введите коректно число от 1 до 7';
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
          return 'В неделе всего 7 дней! Ни меньше и не больше!';
      }
    case Lang.eng:
      switch (day) {
        case 0:
          return 'Enter valid number 1 to 7';
        case 1:
          return 'Monday';
        case 2:
          return 'Tuesday';
        case 3:
          return 'Wednesday';
        case 4:
          return 'thursday';
        case 5:
          return 'Friday';
        case 6:
        case 7:
          return 'Weekend';
        default:
          return 'There are only 7 days in a week! No less and no more!';
      }
  }
}

// Так же по времени - от 0 до 8 - ночь, от 8 до 12 - утро, от 12 до 20 день, от 20 до 23 - вечер.
String? partsOfTheDay(int hour, Lang lang) {
  switch (lang) {
    case Lang.ru:
      if (hour >= 0 && hour < 8) {
        return 'Ночь';
      } else if (hour >= 8 && hour < 12) {
        return 'Утро';
      } else if (hour >= 12 && hour < 20) {
        return 'День';
      } else if (hour >= 20 && hour <= 23) {
        return 'Вечер';
      } else if (hour == 24) {
        return 'Не знаю от куда вы прилетели своим автостопом, но на нашей планете 24 часа в сутках! Но 24 час тоже нельзя запросить, учитывайте наличие 0';
      } else {
        return 'мимо';
      }
    case Lang.eng:
      if (hour >= 0 && hour < 8) {
        return 'Night';
      } else if (hour >= 8 && hour < 12) {
        return 'Morning';
      } else if (hour >= 12 && hour < 20) {
        return 'Day';
      } else if (hour >= 20 && hour <= 23) {
        return 'Evening';
      } else if (hour == 24) {
        return "24 hours is 0, and if it's 0, it's NIGHT!";
      } else {
        return 'Loose';
      } // А можно ли тут вместо default написать просто else??? Ведь любая не заложенная в кейс цифра выдаст loose и ретернется
  }
}
/*
    Если честно, именно этот момент я подсмотрел, так как потратил много времени на изыскания, безрезультатно...
    И все равно не совсем понял процесс и не могу понять, как в функции dayAndHour написать условие,
    для того, чтобы при запуске коллбэком в консоле сообщение не дублировалось
 */
typedef ResultCallBack = void Function(String callback);

void printMessage(String message) {
  print(message.runtimeType);
}

String? dayAndHour(int day, int hour, Lang lang, [ResultCallBack? onResult]) {
  final message = 'Функция вызванна другой функцией: ${weekday(day, lang)}, ${partsOfTheDay(hour, lang)}';
  onResult?.call(message);
  //Тут хочу добавить условие для устранения дублирования сообщения в консоль

  return '${weekday(day, lang)}, ${partsOfTheDay(hour, lang)}';
}

void main() {
  // task 1
  print(trueOrFalse(3));
  print(trueOrFalse(5));

  // task 2
  print(intToDoubleIfElse(2));
  print(intToDoubleTernary(3));

  // task 3
  print(quarterHour(55));
  print(quarterHour(61));

  // task 4
  print(weekday(1, Lang.eng));
  print(partsOfTheDay(26, Lang.eng));
  print(dayAndHour(4, 6, Lang.eng));
  print(dayAndHour(1, 3, Lang.ru, print));
}

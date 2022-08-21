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

String quarterHour(int h) {
  if (h >= 0 && h <= 14) {
    return 'Первая четверть часа';
  } else if (h >= 15 && h <= 29) {
    return 'Вторая четверть часа';
  } else if (h >= 30 && h <= 44) {
    return 'Третья четверть часа';
  } else if (h >= 45 && h <= 59) {
    return 'Четвертая четверть часа';
  } else {
    return 'Так то вводить число больше 59 не стоит';
  }
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

String? dayByDay(int day, Lang lang) {
  switch (lang) {
    case Lang.ru:
      switch (day) {
        case 1:
          {
            return 'Понедельник';
          }
        case 2:
          {
            return 'Вторник';
          }
        case 3:
          {
            return 'Среда';
          }
        case 4:
          {
            return 'Четверг';
          }
        case 5:
          {
            return 'Пятница';
          }
        case 6:
        case 7:
          {
            return 'Выходной';
          }
        default:
          {
            return 'В неделе всего 7 дней! И не больше!!!';
          }
      }
    case Lang.eng:
      switch (day) {
        case 1:
          {
            return 'Monday';
          }
        case 2:
          {
            return 'Tuesday';
          }
        case 3:
          {
            return 'Wednesday';
          }
        case 4:
          {
            return 'thursday';
          }
        case 5:
          {
            return 'Friday';
          }
        case 6:
        case 7:
          {
            return 'Weekend';
          }
        default:
          {
            return 'There are only 7 days in a week! And no more!!!';
          }
      }
  }
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
  print(dayByDay(11, Lang.eng));
}

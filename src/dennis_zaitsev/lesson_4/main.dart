void main() {
  //Homework 4.1
  print(intToString(2));
//Homework 4.2
  print(intToDouble(0));
  print(inToDoubleTernary(6));
  //Homework 4.3
  print(partOfHour(45));
  //Homework 4.4
  print(dayOfWeek(6, Lang.ru));
  print(timeOfDay(55, Lang.eng));
  print(daysAndHoursOfWeek(6, 22, Lang.eng));
  daysAndHoursOfWeek(5, 15, Lang.ru, print);
}

// 1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
// Если переменная a больше нуля и меньше 5-ти
String intToString(int a) {
  if (a > 0 && a < 5) {
    return 'Верно';
  } else {
    return 'Неверно';
  }
}
// 2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернатрного оператора и конструкции if-else

double intToDouble(int a) {
  if (a == 0 || a == 2) {
    return a + 7;
  } else {
    return a / 10;
  }
}

double inToDoubleTernary(int a) {
  double x = a.toDouble();
  x == 0 || x == 2 ? x += 7 : x /= 10;
  return x;
}

// 3. Часть часа
// В переменной min лежит число от 0 до 59.
// Определите в какую четверть часа попадает это число (в первую, вторую, третью или четвертую).
String? partOfHour(int a) {
  if (a >= 0 && a < 14) {
    return 'Первая четверть часа';
  } else if (a >= 15 && a < 29) {
    return 'Вторая четверть часа';
  } else if (a >= 30 && a < 44) {
    return 'Третья четверть часа';
  } else if (a >= 45 && a < 59) {
    return 'Четвертая четверть часа';
  } else {
    return 'Ошибка: Введите число от 0 до 59';
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

enum Lang { ru, eng }

String dayOfWeek(int day, Lang lang) {
  if (day == 1) {
    return lang == Lang.ru ? 'Понедельник' : 'Monday';
  } else if (day == 2) {
    return lang == Lang.ru ? 'Вторник' : 'Tuesday';
  } else if (day == 3) {
    return lang == Lang.ru ? 'Среда' : 'Wednesday';
  } else if (day == 4) {
    return lang == Lang.ru ? 'Четверг' : 'Thursday';
  } else if (day == 5) {
    return lang == Lang.ru ? 'Пятница' : 'Friday';
  } else if (day == 6 || day == 7) {
    return lang == Lang.ru ? 'Выходной' : 'Weekend';
  } else {
    return lang == Lang.ru
        ? 'Ошибка: Введите день от 1 до 7'
        : 'Error: Enter day from 1 to 7';
  }
}

String timeOfDay(int time, Lang lang) {
  if (time >= 0 && time <= 7) {
    return lang == Lang.ru ? 'Ночь' : 'Night';
  } else if (time >= 8 && time <= 11) {
    return lang == Lang.ru ? 'Утро' : 'Morning';
  } else if (time >= 12 && time <= 19) {
    return lang == Lang.ru ? 'День' : 'Afternoon';
  } else if (time >= 20 && time <= 23) {
    return lang == Lang.ru ? 'Вечер' : 'Evening';
  } else {
    return lang == Lang.ru
        ? 'Ошибка: Введите время от 0 до 23'
        : 'Error: Enter time from 0 to 23';
  }
}

// в) сделать у функции необязательный четвертый аргумент - коллбек, возвращающий результат.
// г) дважды вызвать функцию и вывести в консоль значения из коллбека и из ретерна
// д) создание вспомогательных функций приветствуется

String daysAndHoursOfWeek(int day, int time, Lang lang, [CallBack? onResult]) {
  onResult?.call('${dayOfWeek(day, lang)}, ${timeOfDay(time, lang)}');
  return '${dayOfWeek(day, lang)}, ${timeOfDay(time, lang)}';
}

typedef CallBack = void Function(String result);

void printCallBack(CallBack onResult) {
  print(onResult);
}

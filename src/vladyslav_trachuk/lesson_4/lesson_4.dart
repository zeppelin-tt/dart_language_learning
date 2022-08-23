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
  var str = 'У вас ошибка';
  if (min <= 0 || min >= 61) {
    return str;
  }
  if (min >= 0 && min <= 15) {
    str = 'Данный промежуток попадает в первую четверть часа';
  }
  if (min >= 16 && min <= 30) {
    str = 'Данный промежуток попадает во вторую четверть часа';
  }
  if (min >= 31 && min <= 45) {
    str = 'Данный промежуток попадает в третью четверть часа';
  }
  if (min >= 46 && min <= 59) {
    str = 'Данный промежуток попадает в четвертую четверть часа';
  }
  return str;
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

String dayOfTheWeek(int checkDay, Lang lang) {
  switch (lang) {
    case Lang.ru:
      switch (checkDay) {
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
          return 'Суббота';
        case 7:
          return 'Воскресенье';
        default:
          return 'Ошибка';
      }
    case Lang.eng:
      switch (checkDay) {
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
          return 'Saturday';
        case 7:
          return 'Sunday';
        default:
          return 'Error';
      }
  }
}
String timeOfDay(int time, Lang lang) {
  switch (lang) {
    case Lang.ru:
      if (0 < time && time <= 8) {
        return 'Сейчас ночь';
      } else if (8 < time && time <= 12) {
        return 'Сейчас утро';
      } else if (12 < time && time <= 20) {
        return 'Сейчас день';
      } else if (20 < time && time <= 23) {
        return 'Сейчас вечер';
      } else {
        return 'Ошибка - не верно указано время!';
      }
    case Lang.eng:
      if (0 < time && time <= 8) {
        return "It's night now";
      } else if (8 < time && time <= 12) {
        return "It's morning now";
      } else if (12 < time && time <= 20) {
        return "It's day now";
      } else if (20 < time && time <= 23) {
        return "It's evening now";
      } else {
        return 'Error - time is not correct!';
      }
  }
}

typedef MainCallBack = void Function(String callBackForInfo);

void myCallBackPrinting(String daysInfo) {
  print(daysInfo);
}

String checkingTheTime(int checkDay, int time, Lang lang, [MainCallBack? onResult]) {
  final info =
      ' (КОЛЛБЕК) Сегодня день недели - ${dayOfTheWeek(checkDay, lang)}, а время суток - ${timeOfDay(time, lang)}';
  onResult?.call(info);
  return 'Сегодня прекрасный день - ${dayOfTheWeek(checkDay, lang)} не правда ли? Хотя сейчас всего лишь - ${timeOfDay(time, lang)} ';
}

void main() {
  print(checkNum(10));
  print(whatTime(59));
  print(timeOfDay(10, Lang.ru));
  print(timeOfDay(23, Lang.eng));
  print(timeOfDay(11, Lang.ru));
  print(checkingTheTime(5, 18, Lang.ru, myCallBackPrinting));
  print(checkingTheTime(5, 8, Lang.ru));
}

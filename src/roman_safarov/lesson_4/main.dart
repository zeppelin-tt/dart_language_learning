void main() {
  print(intInStringOut(5));
  print(intInDoubleOut(2));
  print(intInDoubleOut(7));
  print(partOfHour(50));
  dayOfWeek(
    4,
    7,
    Lang.ru,
    onResult: print,
  );
  dayOfWeek(6, 18, Lang.eng, onResult: print);
}

//1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
// Если переменная a больше нуля и меньше 5-ти
String intInStringOut(int num) {
  if (num > 0 && num < 5) {
    return 'False';
  } else {
    return 'True';
  }
}

//2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернарного оператора и конструкции if-else
double intInDoubleOut(int num) {
  if (num == 0 || num == 2) {
    num += 7;
  } else {
    num = num ~/ 10;
  }
  return num.toDouble();
}

//3. Часть часа
// В переменной min лежит число от 0 до 59.
// Определите в какую четверть часа попадает это число (в первую, вторую, третью или четвертую).
String? partOfHour(int min) {
  if (min >= 0 && min < 15) {
    return 'первая четверть часа';
  } else if (min >= 15 && min < 30) {
    return 'вторая четверть часа';
  } else if (min >= 30 && min < 45) {
    return 'третья четверть часа';
  } else if (min >= 45 && min < 60) {
    return 'четвертая четверть часа';
  } else {
    return 'число должно быть от 0 до 59';
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
// д) создание вспомогательных функций приветствуется'
enum Lang { ru, eng }

String? dayOfWeek(
  int? numOfDay,
  int? partOfDayTime,
  Lang lang, {
  ResultCallBack? onResult,
}) {
  String? dayName;
  String? dayTime;
  final res = '$numOfDay, $partOfDayTime, $lang';
  if (numOfDay! > 0 && numOfDay <= 7) {
    if (numOfDay == 1) {
      lang == Lang.ru ? dayName = 'понедельник' : dayName = 'monday';
    } else if (numOfDay == 2) {
      lang == Lang.ru ? dayName = 'вторник' : dayName = 'tuesday';
    } else if (numOfDay == 3) {
      lang == Lang.ru ? dayName = 'среда' : dayName = 'wednesday';
    } else if (numOfDay == 4) {
      lang == Lang.ru ? dayName = 'четверг' : dayName = 'thursday';
    } else if (numOfDay == 5) {
      lang == Lang.ru ? dayName = 'пятница' : dayName = 'friday';
    } else if (numOfDay == 6 || numOfDay == 7) {
      lang == Lang.ru ? dayName = 'выходной' : dayName = 'day off';
    } else {
      return 'значение $numOfDay не входит в диапазон';
    }
  }
  if (partOfDayTime! >= 0 && partOfDayTime < 24) {
    if (partOfDayTime >= 6 && partOfDayTime < 12) {
      lang == Lang.ru ? dayTime = 'утро' : dayTime = 'morning';
    } else if (partOfDayTime >= 12 && partOfDayTime < 18) {
      lang == Lang.ru ? dayTime = 'день' : dayTime = 'afternoon';
    } else if (partOfDayTime > 18 && partOfDayTime <= 23) {
      lang == Lang.ru ? dayTime = 'вечер' : dayTime = 'evening';
    } else if (partOfDayTime >= 0 && partOfDayTime < 6) {
      lang == Lang.ru ? dayTime = 'ночь' : dayTime = 'night';
    } else {
      return 'значение $partOfDayTime не входит в диапазон';
    }
  }
  onResult?.call(res);
  return '$dayTime ${dayName!}';
}

typedef ResultCallBack = void Function(String result);

void callCallBack(String res) {
  print(res);
}

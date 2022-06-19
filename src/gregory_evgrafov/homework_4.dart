import 'dart:math';

void main() {
  // 1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
  // Если переменная a больше нуля и меньше 5-ти
  String checker(int a) {
    if (a > 0 && a < 5) {
      return '$a верно';
    } else {
      return '$a неверно';
    }
  }

  print('Задание 1');
  print(checker(9));
  print(checker(3));

// 2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернатрного оператора и конструкции if-else
  double doubleConverter(int a) {
    double convertedA = a.toDouble();
    return convertedA == 0 || convertedA == 2 ? convertedA += 7 : convertedA /= 10;
  }

  double doubleConverterIf(int a) {
    double convertedA = a.toDouble();
    if (convertedA == 0 || convertedA == 2) {
      return convertedA += 7;
    } else {
      return convertedA / 10;
    }
  }

  print('Задание 2');
  print(doubleConverter(5));
  print(doubleConverterIf(5));
  print(doubleConverter(2));
  print(doubleConverterIf(2));
  print(doubleConverter(0));
  print(doubleConverterIf(0));

// 3. Часть часа
// В переменной min лежит число от 0 до 59.
// Определите в какую четверть часа попадает это число (в первую, вторую, третью или четвертую).
  final int min = Random().nextInt(60);

  String quarterChecker(int minute) {
    if (minute <= 15) {
      return 'Первая четверть часа';
    } else if (minute <= 30) {
      return 'Вторая четверть часа';
    } else if (minute <= 45) {
      return 'Третья четверть часа';
    } else {
      return 'Четвертая четветь часа!';
    }
  }

  print('Задание 3');
  print('$min минут(ы)');
  print(quarterChecker(min));

  // 4. Дни недели;
// аргументы функции
// int - номера дня недели
// int - время, часов
// enum Lang - язык (ru, eng)
//ВОПРОС: всегда объявляем enum вне main{}?

// Если число равно 1, выводим то это 'Понедельник', 2 –”Вторник” и так далее. Если 6 или 7 – “Выходной”.
// Так же по времени - от 0 до 8 - ночь, от 8 до 12 - утро, от 12 до 20 день, от 20 до 23 - вечер.
// если Lang.ru - выводить на русском, если Lang.eng - на английском
//
// а) Обработать невалидные аргументы
// б) функция должна возвращать например, 'Понедельник, день' или то же самое на английском языке
// в) сделать у функции необязательный четвертый аргумент - коллбек, возвращающий результат.
// г) дважды вызвать функцию и вывести в консоль значения из коллбека и из ретерна
// д) создание вспомогательных функций приветствуется

  //Тут уместно было бы использовать функции со списками, но т.к. это не рамках этого урока, то в функции используются только условия
  //НЕ понял как сделать коллбэк опциональным
  String daysOfTheWeek(int weekDay, int hour, langEnum ,void Function (String result) onResult) {
    late String dayOfTheWeek;
    late String timeOfDay;
    if (weekDay >= 0 && weekDay <=7){
      if (hour >= 0 && hour <= 23){
        weekDay == 1 && langEnum == Lang.ru ? dayOfTheWeek = 'Понедельник' :dayOfTheWeek = 'Monday';
        weekDay == 2 && langEnum == Lang.ru ? dayOfTheWeek = 'Вторник' :dayOfTheWeek = 'Tuesday';
        weekDay == 3 && langEnum == Lang.ru ? dayOfTheWeek = 'Среда' :dayOfTheWeek = 'Wednesday';
        weekDay == 4 && langEnum == Lang.ru ? dayOfTheWeek = 'Четверг' :dayOfTheWeek = 'Thursday';
        weekDay == 5 && langEnum == Lang.ru ? dayOfTheWeek = 'Пятница' :dayOfTheWeek = 'Friday';
        (weekDay == 6 || weekDay ==7) && langEnum == Lang.ru ? dayOfTheWeek = 'Выходной' :dayOfTheWeek = 'Weekend';

        if(hour>=0 && hour<8){
          langEnum == Lang.ru ? timeOfDay = 'Ночь' : timeOfDay = 'Night';
        }
        else if(hour>=8 && hour<12){
          langEnum == Lang.ru ? timeOfDay = 'Утро' : timeOfDay = 'Morning';
        }
        else if(hour>=12 && hour<20){
          langEnum == Lang.ru ? timeOfDay = 'День' : timeOfDay = 'Day';
        }
        else if(hour>=20 && hour<=23){
          langEnum == Lang.ru ? timeOfDay = 'Вечер' : timeOfDay = 'Evening';
        }
        onResult('Функция выполнена');
        return '$dayOfTheWeek, $timeOfDay';
      } else{
        throw Exception('$hour Недопустимое значение для hour');
      }
    } else{
      throw Exception('$weekDay недопустимое значение для weekDay');
    }
  }

  print('Задание 4');
  print(daysOfTheWeek(6, 18, Lang.ru,print));
  print(daysOfTheWeek(7, 20, Lang.eng, print));
  print(daysOfTheWeek(7, 20, Lang.eng, print));
}

enum Lang { ru, eng }
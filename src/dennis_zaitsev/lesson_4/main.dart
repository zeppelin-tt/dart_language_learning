void main() {
  //Homework 4.1
  print(aFunction(2));
//Homework 4.2
  print(bFunction(0));
  print(cFunction(6));
  //Homework 4.3
  print(partOfHour(60));
}

// 1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
// Если переменная a больше нуля и меньше 5-ти
String aFunction(int a) {
  if (a > 0 && a < 5) {
    return 'Верно';
  } else {
    return 'Неверно';
  }
}
// 2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернатрного оператора и конструкции if-else

double bFunction(int a) {
  if (a == 0 || a == 2) {
    return a + 7;
  } else {
    return a / 10;
  }
}

double cFunction(int a) {
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

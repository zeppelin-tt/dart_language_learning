import 'dart:io';
import 'dart:math';
import '../localisation.dart';
import '../number_utils.dart';

void task1(int n) {
  print('$n между 0 и 5 - ${numBetween0and5(n)}');
}

void main() {
  final r = Random();

  final t1N = r.nextInt(10);
  task1(t1N);
  final t2N = r.nextInt(4);
  task2(t2N);
  final t3N = r.nextInt(60);
  task3(t3N);
  final t4W = r.nextInt(8) + 1;
  final t4H = r.nextInt(25);
  final Lang t4L = Lang.values[r.nextInt(2)];
  task4(t4W, t4H, t4L);
}

String numBetween0and5(int num) {
  return num.isBetween(0, 5) ? 'Верно' : 'Неверно';
}

double calcStrangeV1(int n) {
  return n == 0 || n == 2 ? n + 7 : n / 10;
}

double calcStrangeV2(int n) {
  final double d;
  if (n == 0 || n == 2) {
    d = n + 7;
  } else {
    d = n / 10;
  }
  return d;
}

int getHourQuarter(int n) {
  return n % 60 ~/ 15 + 1;
}

void task2(int n) {
  print('Странное тернарное вычисление для $n = ${calcStrangeV1(n)}');
  print('Странное условное вычисление для $n = ${calcStrangeV2(n)}');
}

void task3(int n) {
  print('$n минут - это ${getHourQuarter(n)}-я четверть часа');
}

void task4(int w, int d, Lang lang) {
  print('in: $w, $d, $lang');
  getTimeInfo(w, d, lang).then(print);
}

Future<String> getTimeInfo(int weekDay, int hour, Lang lang) async {
  assert (weekDay.isBetween(1, 7, 3), 'Неверный день недели. Принимаются значения от 1 до 7');
  assert (weekDay.isBetween(0, 24, 2), 'Неверный час дня. Принимаются значения от 0 до 23');

  const String strWeek = 'week';
  final List<String> dir = Platform.script.pathSegments.toList()
  ..removeLast();
  final String path = '${dir.join(Platform.pathSeparator)}${Platform.pathSeparator}localisation';
  final Localisation localisation = Localisation(lang, path);
  final String week = await localisation.getString([strWeek, weekDay - 1]);
  final int dayPart;
  if (hour.isBetween(0, 8, 2)) {
    dayPart = 3;
  } else if (hour.isBetween(8, 12, 2)) {
    dayPart = 0;
  }else if (hour.isBetween(12, 20, 2)) {
    dayPart = 1;
  }else {
    dayPart = 2;
  }
  const String strDay = 'day';
  final String day = await localisation.getString([strDay, dayPart]);
  return '$week, $day';
}

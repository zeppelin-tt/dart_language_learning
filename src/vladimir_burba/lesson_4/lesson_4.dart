import 'dart:io';
import 'dart:math';
import '../localisation.dart';
import '../number_utils.dart';

void main() {
  final rnd = Random();

  int rndInt = rnd.nextInt(10);
  print('$rndInt между 0 и 5 - ${numBetween0and5(rndInt)}');

  rndInt = rnd.nextInt(4);
  print('Странное тернарное вычисление для $rndInt = ${calcStrangeV1(rndInt)}');
  print('Странное условное вычисление для $rndInt = ${calcStrangeV2(rndInt)}');

  rndInt = rnd.nextInt(60);
  print('$rndInt минут - это ${getHourQuarter(rndInt)}-я четверть часа');

  int rndWeek = rnd.nextInt(8) + 1;
  int rndHour = rnd.nextInt(25);
  Lang lang = Lang.values[rnd.nextInt(2)];
  task4(rndWeek, rndHour, lang);
  rndWeek = rnd.nextInt(8) + 1;
  rndHour = rnd.nextInt(25);
  lang = Lang.values[rnd.nextInt(2)];
  task4(rndWeek, rndHour, lang, callbackFunc);
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

void task4(
  int w,
  int d,
  Lang lang, [
  ResultCallback? onResult,
]) {
  print('На входе: $w, $d, $lang, $onResult');
  getTimeInfo(w, d, lang, onResult).then(print);
}

typedef ResultCallback = String Function(String result);

String callbackFunc(String str) {
  return '$str (здесь могла бы быть Ваша реклама. Реклама в коллбэках - 8 912 3456789)';
}

Future<String> getTimeInfo(
  int weekDay,
  int hour,
  Lang lang, [
  ResultCallback? onResult,
]) async {
  assert(weekDay.isBetween(1, 7, 3), 'Неверный день недели. Принимаются значения от 1 до 7');
  assert(weekDay.isBetween(0, 24, 2), 'Неверный час дня. Принимаются значения от 0 до 23');

  const String strWeek = 'week';
  final List<String> dir = Platform.script.pathSegments.toList()..removeLast();
  final String path = '${dir.join(Platform.pathSeparator)}${Platform.pathSeparator}localisation';
  final Localisation localisation = Localisation(lang, path);
  final String week = await localisation.getString([strWeek, weekDay - 1]);
  final int dayPart;
  if (hour.isBetween(0, 8, 2)) {
    dayPart = 3;
  } else if (hour.isBetween(8, 12, 2)) {
    dayPart = 0;
  } else if (hour.isBetween(12, 20, 2)) {
    dayPart = 1;
  } else {
    dayPart = 2;
  }
  const String strDay = 'day';
  final String day = await localisation.getString([strDay, dayPart]);
  final String result = '$week, $day';
  if (onResult != null) {
    return onResult(result);
  } else {
    return result;
  }
}

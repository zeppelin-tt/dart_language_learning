import 'hen.dart';

// 1.5. Создать класс BelarusianHen, который наследуется от Hen
// 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
// Методы должны возвращать количество яиц в месяц от данного типа куриц.
// 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
// Методы должны возвращать строку вида:
// <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
// где SSSSS - название страны
// где N - количество яиц в месяц

const String countryBelarusia = 'Беларусь';

class BelarusianHen extends Hen {
  @override
  int getCountOfEggsPerMonth() => 50;

  @override
  String get description => 'Я курица, моя страна $countryBelarusia. Я несу ${getCountOfEggsPerMonth()} яиц в месяц';

  @override
  String toString() => description;
}

import 'hen.dart';

// 1.2. Создать класс RussianHen, который наследуется от Hen
// 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
// Методы должны возвращать количество яиц в месяц от данного типа куриц.
// 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
// Методы должны возвращать строку вида:
// <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
// где SSSSS - название страны
// где N - количество яиц в месяц

class RussianHen extends Hen {
  static const String country = 'Россия';


  @override
  int getCountOfEggsPerMonth() => 60;

  @override
  String get description =>
      'Я курица, моя страна $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц';

  @override
  String toString() => description;
}

import 'hen.dart';

// 1.4. Создать класс MoldovanHen, который наследуется от Hen
// 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
// Методы должны возвращать количество яиц в месяц от данного типа куриц.
// 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
// Методы должны возвращать строку вида:
// <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
// где SSSSS - название страны
// где N - количество яиц в месяц

const String countryMoldavia = 'Молдавия';

class MoldovanHen extends Hen {
  final String country = 'Молдавия';

  @override
  int getCountOfEggsPerMonth() => 40;

  @override
  String get description => 'Я курица, моя страна $countryMoldavia. Я несу ${getCountOfEggsPerMonth()} яиц в месяц';

  @override
  String toString() => description;
}

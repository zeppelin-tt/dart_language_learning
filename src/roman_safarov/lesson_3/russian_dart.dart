import 'hen.dart';

class RussianHen extends Hen {
  final int eggsCount = 200;
// 1.2. Создать класс RussianHen, который наследуется от Hen
  // 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
// Методы должны возвращать количество яиц в месяц от данного типа куриц.
// 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
// Методы должны возвращать строку вида:
  String get country => 'Россия';
  @override
  int getCountOfEggsPerMonth() {
    return eggsCount;
  }
  @override
  String getDescription() {
    return '${super
        .getDescription()} Моя страна -  $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц';
  }
}
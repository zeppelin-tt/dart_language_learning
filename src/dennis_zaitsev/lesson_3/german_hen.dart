import 'hen.dart';

// 1.2. Создать класс GermanHen, который наследуется от Hen
class GermanHen extends Hen {
  final country = 'Германия';

  // 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
  // Методы должны возвращать количество яиц в месяц от данного типа куриц.
  @override
  int getCountOfEggsPerMonth() {
    return 444;
  }

  // 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
  // Методы должны возвращать строку вида:
  // <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
  // где SSSSS - название страны
  // где N - количество яиц в месяц
  @override
  String getDescription() {
    return '${super.getDescription()} Моя страна - $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

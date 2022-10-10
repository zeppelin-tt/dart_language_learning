import 'hen.dart';

// 1.2. Создать класс MoldovanHen, который наследуется от Hen
class MoldovanHen extends Hen {
  final country = 'Молдова';

  // 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
  // Методы должны возвращать количество яиц в месяц от данного типа куриц.
  @override
  int getCountOfEggsPerMonth() {
    return 777;
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

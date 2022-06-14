import 'hen.dart';

// 1.9. Все созданные вами классы должны быть в отдельных файлах
// 1.2. Создать класс RussianHen, который наследуется от Hen
class RussianHen extends Hen {
  final String country = 'Россия';
  final int _eggsPerMonths = 9;
  // 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
  // Методы должны возвращать количество яиц в месяц от данного типа куриц.
  @override
  int getCountOfEggsPerMonth() {
    return _eggsPerMonths ;
  }

  // 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
  // Методы должны возвращать строку вида:
  // <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
  // где SSSSS - название страны
  // где N - количество яиц в месяц

  @override
  String getDescription() {
    return '${super.getDescription()} Моя страна -  $country. Я несу ${getCountOfEggsPerMonth()}  яиц в месяц';
  }
}

import 'hen.dart';

// 1.9. Все созданные вами классы должны быть в отдельных файлах
// 1.4. Создать класс MoldovanHen, который наследуется от Hen
class MoldovaHen extends Hen {
  static const String country = 'Молдова';
// 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
// Методы должны возвращать количество яиц в месяц от данного типа куриц.
@override
int getCountOfEggsPerMonth(){
  return 8;
}
// 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
// Методы должны возвращать строку вида:
// <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
// где SSSSS - название страны
// где N - количество яиц в месяц

  @override
  String getDescription() {
    return '${super
        .getDescription()} Моя страна -  $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц';
  }

}


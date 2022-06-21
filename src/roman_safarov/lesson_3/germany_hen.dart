import 'hen.dart';
// 1.3. Создать класс GermanHen, который наследуется от Hen
class GermanHen extends Hen{
  final int eggsCount = 0;

  String get country => '';
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
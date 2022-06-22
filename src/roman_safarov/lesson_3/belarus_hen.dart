import 'hen.dart';

// 1.5. Создать класс BelarusianHen, который наследуется от Hen
class BelarusianHen extends Hen {
  final int eggsCount = 6000000;

  String? get country => 'Беларусь';

  @override
  int getCountOfEggsPerMonth() {
    return eggsCount;
  }

  @override
  String getDescription() {
    return '${super.getDescription()} Моя страна -  $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц';
  }
}

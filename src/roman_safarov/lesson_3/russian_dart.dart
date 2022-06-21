import 'hen.dart';

class RussianHen extends Hen {
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
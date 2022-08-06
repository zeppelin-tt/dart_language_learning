import 'hen.dart';

class BelarusianHen extends Hen {
  String country = 'Беларусь';
  final _countOfEggsPerMonth = 40;

  int get countOfEggsPerMonth {
    return _countOfEggsPerMonth;
  }

  String get description {
    return '${super.getDescription()} Моя страна Беларусь. Я несу $countOfEggsPerMonth яиц в месяц.';
  }
}

import 'hen.dart';

class RussianHen extends Hen {
  String country = 'Россия';
  final _countOfEggsPerMonth = 10;

  int get countOfEggsPerMonth {
    return _countOfEggsPerMonth;
  }

  String get description {
    return '${super.getDescription()} Моя страна $country. Я несу $_countOfEggsPerMonth яиц в месяц.';
  }
}

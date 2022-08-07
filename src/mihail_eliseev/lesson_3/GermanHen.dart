import 'hen.dart';

class GermanHen extends Hen {
  String country = 'Германия';
  final _countOfEggsPerMonth = 20;

  int get countOfEggsPerMonth {
    return _countOfEggsPerMonth;
  }

  String get description {
    return '${super.getDescription()} Моя страна Германия. Я несу ${countOfEggsPerMonth} яиц в месяц.';
  }
}

import 'hen.dart';

class GermanHen extends Hen {
  String country = 'Германия';
  final _countOfEggsPerMonth = 120;

  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
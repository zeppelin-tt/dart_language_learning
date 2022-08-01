import 'hen.dart';

class BelarusianHen extends Hen {
  String country = 'Беларусь';
  final _countOfEggsPerMonth = 90;

  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
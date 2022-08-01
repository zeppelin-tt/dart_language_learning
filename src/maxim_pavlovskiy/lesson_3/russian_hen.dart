import 'hen.dart';

class RussianHen extends Hen {
  String country = 'Россия';
  final _countOfEggsPerMonth = 100;

  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
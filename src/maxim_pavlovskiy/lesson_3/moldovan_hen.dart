import 'hen.dart';

class MoldovanHen extends Hen {
  String country = 'Молдова';
  final _countOfEggsPerMonth = 180;

  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - $country. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
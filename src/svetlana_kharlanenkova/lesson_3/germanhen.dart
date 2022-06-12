import 'hen.dart';

class GermanHen extends Hen {
  final _countOfEggsPerMonth = 50;
  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Германия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

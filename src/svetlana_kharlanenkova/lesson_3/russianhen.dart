import 'hen.dart';

class RussianHen extends Hen {
  final _countOfEggsPerMonth = 77;
  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Россия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

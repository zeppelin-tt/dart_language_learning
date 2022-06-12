import 'hen.dart';

class BelarusianHen extends Hen {
  final _countOffEggsPerMonth = 71;
  @override
  int getCountOfEggsPerMonth() {
    return _countOffEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Беларуссия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

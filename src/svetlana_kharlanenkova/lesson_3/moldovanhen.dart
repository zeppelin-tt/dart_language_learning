import 'hen.dart';

class MoldovanHen extends Hen {
  final _countOfEggsPerMonth = 33;
  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Молдавия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

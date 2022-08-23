import 'hen.dart';

class MoldovanHen extends Hen {
  String country = 'Молдова';
  final _countOfEggsPerMonth = 30;

  int get countOfEggsPerMonth {
    return _countOfEggsPerMonth;
  }

  String get description {
    return '${super.getDescription()} Моя страна Молдова. Я несу $countOfEggsPerMonth яиц в месяц.';
  }
}

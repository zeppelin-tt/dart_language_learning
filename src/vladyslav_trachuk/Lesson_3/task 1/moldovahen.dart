import 'hen.dart';

class MoldovaHen extends Hen {
  final breedOfHen = 'Порода называется - Молдавочка';
  final _countOfEggsPerMonth = 10;
  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Молдова. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

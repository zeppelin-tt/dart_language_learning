import 'hen.dart';

class GermanHen extends Hen {
  final breedOfHen = 'Порода называется - Немочка';
  final _countOfEggsPerMonth = 5;
  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Германия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

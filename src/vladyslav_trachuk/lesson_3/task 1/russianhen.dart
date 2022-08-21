import 'hen.dart';

class RussianHen extends Hen {
  final _countOfEggsPerMonth = 100;
  final breedOfHen = 'Порода называется - Россияночка';
  @override
  int getCountOfEggsPerMonth() {
    return _countOfEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Россия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

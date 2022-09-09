import 'hen.dart';

class BelarusHen extends Hen {
  final breedOfHen = 'Порода называется - Белорусочка';
  final _countOffEggsPerMonth = 20;
  @override
  int getCountOfEggsPerMonth() {
    return _countOffEggsPerMonth;
  }

  @override
  String get description {
    return '${super.description}. Моя страна - Беларусь. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}

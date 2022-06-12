import 'hen.dart';

class GermanHen extends Hen {
  @override
  int getCountOfEggsPerMonth() {
    return 50;
  }
  @override
  String get description {
    return '${super.description}. Моя страна - Германия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
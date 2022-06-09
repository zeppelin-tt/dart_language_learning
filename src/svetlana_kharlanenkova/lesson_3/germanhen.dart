import 'hen.dart';

class GermanHen extends Hen {
  int getCountOfEggsPerMonth() {
    return 50;
  }
  String get description {
    return super.description + 'Моя страна - Германия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
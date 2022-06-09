import 'hen.dart';

class RussianHen extends Hen {
  int getCountOfEggsPerMonth() {
    return 77;
  }
  String get description {
    return super.description + 'Моя страна - Россия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
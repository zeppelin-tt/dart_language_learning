import 'hen.dart';

class BelarusianHen extends Hen {
  int getCountOfEggsPerMonth() {
    return 71;
  }
  String get description {
    return super.description + 'Моя страна - Беларуссия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
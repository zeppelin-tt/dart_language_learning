import 'hen.dart';

class BelarusianHen extends Hen {
  @override
  int getCountOfEggsPerMonth() {
    return 71;
  }
  @override
  String get description {
    return '${super.description}. Моя страна - Беларуссия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
import 'hen.dart';

class RussianHen extends Hen {
  @override
  int getCountOfEggsPerMonth() {
    return 77;
  }
  @override
  String get description {
    return '${super.description}. Моя страна - Россия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
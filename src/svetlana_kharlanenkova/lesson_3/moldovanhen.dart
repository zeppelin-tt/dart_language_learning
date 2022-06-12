import 'hen.dart';

class MoldovanHen extends Hen {
  @override
  int getCountOfEggsPerMonth() {
    return 33;
  }
  @override
  String get description {
    return '${super.description}. Моя страна - Молдавия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
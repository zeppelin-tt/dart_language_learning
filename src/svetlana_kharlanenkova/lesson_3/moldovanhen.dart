import 'hen.dart';

class MoldovanHen extends Hen {
  int getCountOfEggsPerMonth() {
    return 33;
  }
  String get description {
    return super.description + 'Моя страна - Молдавия. Я несу ${getCountOfEggsPerMonth()} яиц в месяц.';
  }
}
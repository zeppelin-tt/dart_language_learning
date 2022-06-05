import 'hen.dart';

class GermanHen extends Hen{

  @override
  int get countOfEggsPerMonth{
    return 39;
  }

  @override
  String get getDescription{
    return '$description My country is Germany. I lay $countOfEggsPerMonth eggs a month!';
  }
}

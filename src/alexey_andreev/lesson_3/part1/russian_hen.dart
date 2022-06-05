import 'hen.dart';

class RussianHen extends Hen{

  @override
  int get countOfEggsPerMonth{
    return 45;
  }

  @override
  String get getDescription{
    return '$description My country is Russia. I lay $countOfEggsPerMonth eggs a month!';
  }
}
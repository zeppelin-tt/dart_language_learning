import 'hen.dart';

class BelarusianHen extends Hen{

  @override
  int get countOfEggsPerMonth{
    return 45;
  }
  @override
  String get getDescription{
    return '$description My country is Belarus. I lay $countOfEggsPerMonth eggs a month!';
  }
}
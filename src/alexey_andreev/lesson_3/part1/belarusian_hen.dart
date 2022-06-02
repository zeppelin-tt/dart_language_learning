import 'hen.dart';

class BelarusianHen extends Hen{

  @override
  int get getCountOfEggsPerMonth{
    return 45;
  }

  String get getDescription{
    return '$description My country is Belarus. I lay $getCountOfEggsPerMonth eggs a month!';
  }
}
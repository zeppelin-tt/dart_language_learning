import 'hen.dart';

class GermanHen extends Hen{

  @override
  int get getCountOfEggsPerMonth{
    return 39;
  }

  String get getDescription{
    return '$description My country is Germany. I lay $getCountOfEggsPerMonth eggs a month!';
  }
}

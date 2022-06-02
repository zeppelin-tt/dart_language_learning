import 'hen.dart';

class RussianHen extends Hen{

  @override
  int get getCountOfEggsPerMonth{
    return 45;
  }

  String get getDescription{
    return '$description My country is Russia. I lay $getCountOfEggsPerMonth eggs a month!';
  }
}

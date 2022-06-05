import 'hen.dart';

class MoldovanHen extends Hen{

  @override
  int get countOfEggsPerMonth{
    return 2;
  }

  @override
  String get getDescription{
    return '$description My country is Moldova. I lay $countOfEggsPerMonth eggs a month!';
  }
}
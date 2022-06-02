import 'hen.dart';

class MoldovanHen extends Hen{

  @override
  int get getCountOfEggsPerMonth{
    return 2;
  }

  String get getDescription{
    return '$description My country is Moldova. I lay $getCountOfEggsPerMonth eggs a month!';
  }
}
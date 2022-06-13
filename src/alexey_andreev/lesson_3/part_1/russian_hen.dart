import 'hen.dart';

class RussianHen extends Hen{

  @override
  int get countOfEggsPerMonth{
    return 45;
  }

  @override
  String get description{
    return '${super.description} My country is Russia. I lay $countOfEggsPerMonth eggs a month!';
  }
}
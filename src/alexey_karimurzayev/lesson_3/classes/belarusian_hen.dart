import '../hen_abstract.dart';

class BelarusianHen extends MainHen {
  final int eggs;
  final String country;

  BelarusianHen(this.country, {required this.eggs});

  // int get countOfEggsPerMonth {
  //   return eggs;
  // }
  String getDescription() {
    // <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
    return '${super.description}, my country - $country. I lay $eggs eggs a month';
  }

  @override
  int getCountOfEggsPerMonth() {
    return eggs;
  }
}
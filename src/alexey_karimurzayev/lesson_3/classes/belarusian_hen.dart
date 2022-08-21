import '../hen_abstract.dart';

class BelarusianHen extends Hen {
  final int eggs;
  final String country;

  BelarusianHen(this.country, {required this.eggs});


  String getDescription() {
    // <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
    return '${super.description}, my country - $country. I lay $eggs eggs a month';
  }

  @override
  int getCountOfEggsPerMonth() {
    return eggs;
  }
}

import '../hen_abstract.dart';

class GermanHen extends MainHen {
  final int eggs;
  final String country;

  GermanHen(this.country, {required this.eggs});

  int get countOfEggsPerMonth {
    return eggs;
  }

  String getDescription() {
    return '${super.description}, my country - $country. I lay $eggs eggs a month';
  }

  @override
  int getCountOfEggsPerMonth() {
    return eggs;
  }
}

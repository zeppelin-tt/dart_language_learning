import '../hen_abstract.dart';

class GermanHen extends Hen {
  int eggs = 26;
  String country = 'Germany';

  // GermanHen(this.country, this.eggs);

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

import '../hen_abstract.dart';

class RussianHen extends Hen {
  int eggs = 29;
  String country = 'Russian';

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
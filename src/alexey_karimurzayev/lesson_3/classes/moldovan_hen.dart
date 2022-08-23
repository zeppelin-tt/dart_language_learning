import '../hen_abstract.dart';

class MoldovanHen extends Hen {
  int eggs = 17;
  String country = 'Moldova';

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
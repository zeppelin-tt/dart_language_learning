import 'hen_class.dart';

class RussianHen extends Hen {
  final String CountryName;
  final int EggsPerMonth;

  RussianHen({required this.CountryName, required this.EggsPerMonth});

  @override
  int getCountOfEggsPerMonth() {
    return EggsPerMonth;
  }

  String getDescription() {
    return super.description() +
        ' Моя страна - $CountryName. Я несу $EggsPerMonth яиц в месяц.';
  }
}

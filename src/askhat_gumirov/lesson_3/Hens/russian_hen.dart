import 'hen_class.dart';

class RussianHen extends Hen {
  final String countryName;
  final int eggsPerMonth;

  RussianHen({required this.countryName, required this.eggsPerMonth});

  @override
  int getCountOfEggsPerMonth() {
    return eggsPerMonth;
  }

  String getDescription() {
    return '${super.description()}Моя страна - $countryName. Я несу $eggsPerMonth яиц в месяц.';
  }
}

import 'hen_class.dart';

class MoldovanHen extends Hen {
  final String countryName;
  final int eggsPerMonth;

  MoldovanHen({required this.countryName, required this.eggsPerMonth});

  @override
  int getCountOfEggsPerMonth() {
    return eggsPerMonth;
  }

  String getDescription() {
    return '${super.description()}Моя страна - $countryName. Я несу $eggsPerMonth яиц в месяц.';
  }
}

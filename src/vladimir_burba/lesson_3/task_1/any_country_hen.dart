import 'hen.dart';

abstract class AnyCountryHen extends Hen {
  String get getCountry;

  @override
  String get getDescription {
    return '${super.getDescription} Моя страна $getCountry. Я несу $countOfEggsPerMonth яиц в месяц.';
  }
}

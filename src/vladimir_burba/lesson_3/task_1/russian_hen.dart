import 'any_country_hen.dart';

class RussianHen extends AnyCountryHen {
  static const int eggsPerMonth = 100500;
  static const String country = 'Россия';

  @override
  int get countOfEggsPerMonth {
    return eggsPerMonth;
  }

  @override
  String get getCountry{
    return country;
  }

  @override
  String get getDescription {
    return '${super.getDescription} (* Согласно отчету Министерства сельсхкого хозяйства)';
  }
}

import 'any_country_hen.dart';

class BelarusianHen extends AnyCountryHen {
  static const int eggsPerMonth = 43;
  static const String country = 'Беларусь';

  @override
  int get countOfEggsPerMonth {
    return eggsPerMonth;
  }

  @override
  String get getCountry{
    return country;
  }
}

import 'any_country_hen.dart';

class GermanHen extends AnyCountryHen {
  static const int eggsPerMonth = 45;
  static const String country = 'Германия';

  @override
  int get countOfEggsPerMonth {
    return eggsPerMonth;
  }

  @override
  String get getCountry{
    return country;
  }
}

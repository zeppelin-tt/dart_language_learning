import 'any_country_hen.dart';

class MoldovanHen extends AnyCountryHen {
  static const int eggsPerMonth = 56;
  static const String country = 'Молдова';

  @override
  int get countOfEggsPerMonth {
    return eggsPerMonth;
  }

  @override
  String get getCountry{
    return country;
  }
}

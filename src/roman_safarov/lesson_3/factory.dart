import 'belarus_hen.dart';
import 'germany_hen.dart';
import 'hen.dart';
import 'moldovan_hen.dart';
import 'russian_dart.dart';

class HenFactory {
  Hen? getHen(String country) {
    if (country.toString() == 'Россия') {
      return RussianHen();
    } else if (country.toString() == 'Германия') {
      return GermanHen();
    } else if (country.toString() == 'Беларусь') {
      return BelarusianHen();
    } else if (country.toString() == 'Молдавия') {
      return MoldovanHen();
    }
    return null;
  }
}

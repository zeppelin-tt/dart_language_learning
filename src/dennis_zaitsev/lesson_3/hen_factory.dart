import 'german_hen.dart';
import 'belarusian_hen.dart';
import 'moldovan_hen.dart';
import 'russian_hen.dart';
import 'hen.dart';

//1.8. В классе HenFactory реализовать меетод getHen, который возвращает соответствующую стране породу кур

class HenFactory {
  String country = '';

  HenFactory(this.country);

  Hen? getHen() {
    if (country == 'Германия') {
      final hen = GermanHen();
      return hen;
    } else if (country == 'Беларусь') {
      final hen = BelarusianHen();
      return hen;
    } else if (country == 'Молдова') {
      final hen = MoldovanHen();
      return hen;
    } else if (country == 'Россия') {
      final hen = RussianHen();
      return hen;
    }
    return null;
  }
}

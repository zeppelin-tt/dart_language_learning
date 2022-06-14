
import 'belarusian_hen.dart';
import 'german_hen.dart';
import 'hen.dart';
import 'moldovan_hen.dart';
import 'russian_hen.dart';




// 1.9. Все созданные вами классы должны быть в отдельных файл
// 1.8. В классе HenFactory реализовать меетод getHen, который возвращает соответствующую стране породу курах
class HenFactory {
  Hen? getHen(String country) {
    if (country.toLowerCase() == 'россия') {
      return RussianHen();
    } else if (country.toLowerCase() == 'германия') {
      return GermanHen();
    } else if (country.toLowerCase() == 'беларусь') {
      return BelarusianHen();
    } else if (country.toLowerCase() == 'молдова') {
      return MoldovaHen();
    }
    return null;
  }
}

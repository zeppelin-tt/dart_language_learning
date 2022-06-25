import 'BelarusianHen.dart';
import 'GermanHen.dart';
import 'Hen.dart';
import 'MoldovanHen.dart';
import 'RussianHen.dart';

class HenFactory {
  Hen? getHen(String country) {
    if (country == 'Россия') {
      final hen = RussianHen();
      print(hen.description);
    } else if (country == 'Германия') {
      final hen = GermanHen();
      print(hen.description);
    } else if (country == 'Молдова') {
      final hen = MoldovanHen();
      print(hen.description);
    } else if (country == 'Беларусь') {
      final hen = BelarusianHen();
      print(hen.description);
    }
    return null;
  }
}

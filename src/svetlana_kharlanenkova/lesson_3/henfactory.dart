import 'belarusianhen.dart';
import 'germanhen.dart';
import 'hen.dart';
import 'moldovanhen.dart';
import 'russianhen.dart';

class HenFactory {
  Hen? getHen(String country) {
    if (country == 'Russia') {
      return RussianHen();
    }
    if (country == 'Germany') {
      return GermanHen();
    }
    if (country == 'Moldova') {
      return MoldovanHen();
    }
    if (country == 'Belarus') {
      return BelarusianHen();
    }
  }
}
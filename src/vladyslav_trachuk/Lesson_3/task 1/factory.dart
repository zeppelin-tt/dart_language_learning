import 'germanhen.dart';
import 'moldovahen.dart';
import 'russianhen.dart';
import 'belarushen.dart';

class HenFactory {
  Object? getHen(String country) {
    if (country == 'Russia') {
      return RussianHen().breedOfHen;
    } else if (country == 'Germany') {
      return GermanHen().breedOfHen;

    } else if (country == 'Moldova') {
      return MoldovaHen().breedOfHen;

    } else if (country == 'Belarus') {
      return BelarusHen().breedOfHen;

    }
    return null;
  }
}

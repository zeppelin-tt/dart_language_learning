import 'belarusian_hen.dart';
import 'german_hen.dart';
import 'hen.dart';
import 'moldovan_hen.dart';
import 'russian_hen.dart';

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
    return null;
  }
}

//
// class HenFactory {
//   Hen? getHen(String country) {
//     if (country.toString() == 'Россия') {
//       return RussianHen();
//     } else if (country.toString() == 'Германия') {
//       return GermanHen();
//     } else if (country.toString() == 'Беларусь') {
//       return BelarusianHen();
//     } else if (country.toString() == 'Молдавия') {
//       return MoldovanHen();
//     }
//     return null;
//   }
// }
//
// class HenFactory {
//   Hen? getHen(String country) {
//     if (country == 'Россия') {
//       final hen = RussianHen();
//       print(hen.description);
//     } else if (country == 'Германия') {
//       final hen = GermanHen();
//       print(hen.description);
//       return hen;
//     } else if (country == 'Молдова') {
//       final hen = MoldovanHen();
//       print(hen.description);
//     } else if (country == 'Беларусь') {
//       final hen = BelarusianHen();
//       print(hen.description);
//     }
//     // return throw Exception('Кур из страны $country пока не завезли.');
//   }
// }
import 'belarusian_hen.dart';
import 'german_hen.dart';
import 'hen.dart';
import 'moldovan_hen.dart';
import 'russian_hen.dart';

class HenFactory{

  String country;

  HenFactory(this.country);

  Hen get getHen{
    switch (country) {
      case BelarusianHen.country:
        return BelarusianHen();
      case GermanHen.country:
        return GermanHen();
      case MoldovanHen.country:
        return MoldovanHen();
      case RussianHen.country:
        return RussianHen();
      default:
        throw Exception('Кур из страны $country пока не завезли.');
    }
  }
}
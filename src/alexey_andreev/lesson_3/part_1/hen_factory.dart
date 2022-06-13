import 'belarusian_hen.dart';
import 'german_hen.dart';
import 'hen.dart';
import 'moldovan_hen.dart';
import 'russian_hen.dart';

class HenFactory{

  String country;

  HenFactory(this.country);

  Hen get getHen{
    if (country == 'Russia'){
      final hen = RussianHen();
      return hen;
    }

    else if (country == 'Germany'){
      final hen = GermanHen();
      return hen;
    }

    else if (country == 'Moldova'){
      final hen = MoldovanHen();
      return hen;
    }

    else if (country == 'Belarus') {
      final hen = BelarusianHen();
      return hen;
    }

    throw Exception("There's no such chicken!");

  }
}
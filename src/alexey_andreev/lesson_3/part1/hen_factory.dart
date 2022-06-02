import 'russian_hen.dart';
import 'belarusian_hen.dart';
import 'moldovan_hen.dart';
import 'german_hen.dart';

class HenFactory{

  late String country;

  HenFactory(this.country);

  void get getHen{
    if (country == 'Russia'){
      final hen = RussianHen();
      print(hen.getDescription);
    }

    else if (country == 'Germany'){
      final hen = GermanHen();
      print(hen.getDescription);
    }

    else if (country == 'Moldova'){
      final hen = MoldovanHen();
      print(hen.getDescription);
    }

    else if (country == 'Belarus'){
      final hen = BelarusianHen();
      print(hen.getDescription);
    }

    else{
      print('There is no such chicken!!');
    }

  }
}
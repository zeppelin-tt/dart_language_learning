import 'dart:core';

import 'belarusianhen.dart';
import 'germanhen.dart';
import 'henfactory.dart';
import 'moldovanhen.dart';
import 'russianhen.dart';

void main() {
  final henFactory = HenFactory();
  print(henFactory.getHen('Russia'));
  print(henFactory.getHen('Germany'));
  print(henFactory.getHen('Moldova'));
  print(henFactory.getHen('Belarus'));

  final russianHen = RussianHen();
  print(russianHen.description);

  final germanHen = GermanHen();
  print(germanHen.description);

  final moldovanHen = MoldovanHen();
  print(moldovanHen.description);

  final belarusianHen = BelarusianHen();
  print(belarusianHen.description);
}

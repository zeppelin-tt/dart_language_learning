// ignore_for_file: cascade_invocations

import '../../dennis_zaitsev/lesson_3/belarusian_hen.dart';
import '../../dennis_zaitsev/lesson_3/german_hen.dart';
import '../../dennis_zaitsev/lesson_3/moldovan_hen.dart';
import '../../dennis_zaitsev/lesson_3/printable.dart';
import '../../dennis_zaitsev/lesson_3/russian_hen.dart';
import 'hen_factory.dart';

void main() {
  //Homework 3.1
  final russianHen = RussianHen();
  print(russianHen.getDescription());

  final germanHen = GermanHen();
  print(germanHen.getDescription());

  final belarusianHen = BelarusianHen();
  print(belarusianHen.getDescription());

  final moldovanHen = MoldovanHen();
  print(moldovanHen.getDescription());

  final chikenRus = HenFactory('Россия');
  print(chikenRus.getHen());

  final chikenGer = HenFactory('Германия');
  print(chikenGer.getHen());

  final chikenBel = HenFactory('Беларусь');
  print(chikenBel.getHen());

  final chikenMol = HenFactory('Молдова');
  print(chikenMol.getHen());

  // Homework 3.2
  final book = Book()
    ..name = 'Сияние'
    ..printOut();
    book.burn();

  final book2 = Book()
    ..name = 'Пролетая над гнездом кукушки';
    book2.printOut();

  final magazine = Magazine()
    ..name = 'Ровесник'
    ..printOut();
    magazine.burn();

  final magazine2 = Magazine()
    ..name = 'Липецкие известия';
    magazine2.printOut();
}
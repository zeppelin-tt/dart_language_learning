import '../../dennis_zaitsev/lesson_3/russian_hen.dart';
import '../../dennis_zaitsev/lesson_3/german_hen.dart';
import '../../dennis_zaitsev/lesson_3/belarusian_hen.dart';
import '../../dennis_zaitsev/lesson_3/moldovan_hen.dart';
import '../../dennis_zaitsev/lesson_3/printable.dart';
import 'hen_factory.dart';

void main() {
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

  final book = Book();
  book.name = 'Сияние';
  book.printOut();

  book.name = 'Пролетая над гнездом кукушки';
  book.printOut();

  final magazine = Magazine();
  magazine.name = 'Ровесник';
  magazine.printOut();

  magazine.name = 'Липецкие известия';
  magazine.printOut();
}

import 'Hens/belarusian_hen.dart';
import 'Hens/german_hen.dart';
import 'Hens/hen_factory.dart';
import 'Hens/moldovan_hen.dart';
import 'Hens/russian_hen.dart';
import 'books_magazines/book.dart';
import 'books_magazines/magazine.dart';


void main() {
  final RussianHen russianHen =
      RussianHen(countryName: 'Россия', eggsPerMonth: 25);
  print(russianHen.getDescription());
  print(russianHen.getCountOfEggsPerMonth());

  final GermanHen germanHen =
      GermanHen(countryName: 'Германия', eggsPerMonth: 20);
  print(germanHen.getDescription());
  print(germanHen.getCountOfEggsPerMonth());
  final MoldovanHen moldovanHen =
      MoldovanHen(countryName: 'Молдавия', eggsPerMonth: 15);
  print(moldovanHen.getDescription());
  print(moldovanHen.getCountOfEggsPerMonth());
  final BelarusianHen belarusianHen =
      BelarusianHen(countryName: 'Беларусь', eggsPerMonth: 10);
  print(belarusianHen.getDescription());
  print(belarusianHen.getCountOfEggsPerMonth());

  final HenFactory henFactory = HenFactory();
  print(henFactory.getHen(russianHen));
  print(henFactory.getHen(germanHen));
  print(henFactory.getHen(moldovanHen));
  print(henFactory.getHen(belarusianHen));

  final Book bookOne = Book(name: 'Три Мушкетера');
  final Book bookTwo = Book(name: 'Ангелы и Демоны');

  final Magazine magazineOne = Magazine(name: 'PlayBoy');
  final Magazine magazineTwo = Magazine(name: 'New York Times');

  bookOne.printTitle();
  bookTwo.printTitle();
  magazineOne.printTitle();
  magazineTwo.printTitle();

  bookOne.burn();
  magazineOne.burn();
}

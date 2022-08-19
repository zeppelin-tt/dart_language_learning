import 'Hens/belarusian_hen.dart';
import 'Hens/german_hen.dart';
import 'Hens/hen_factory.dart';
import 'Hens/moldovan_hen.dart';
import 'Hens/russian_hen.dart';
import 'books_magazines/book.dart';
import 'books_magazines/magazine.dart';

void main() {
  RussianHen russianHen = RussianHen(CountryName: 'Россия', EggsPerMonth: 25);
  print(russianHen.getDescription());
  print(russianHen.getCountOfEggsPerMonth());

  GermanHen germanHen = GermanHen(CountryName: 'Германия', EggsPerMonth: 20);
  print(germanHen.getDescription());
  print(germanHen.getCountOfEggsPerMonth());
  MoldovanHen moldovanHen =
      MoldovanHen(CountryName: 'Молдавия', EggsPerMonth: 15);
  print(moldovanHen.getDescription());
  print(moldovanHen.getCountOfEggsPerMonth());
  BelarusianHen belarusianHen =
      BelarusianHen(CountryName: 'Беларусь', EggsPerMonth: 10);
  print(belarusianHen.getDescription());
  print(belarusianHen.getCountOfEggsPerMonth());

  HenFactory henFactory = HenFactory();
  print(henFactory.getHen(russianHen));
  print(henFactory.getHen(germanHen));
  print(henFactory.getHen(moldovanHen));
  print(henFactory.getHen(belarusianHen));

  Book bookOne = Book(name: 'Три Мушкетера');
  Book bookTwo = Book(name: 'Ангелы и Демоны');

  Magazine magazineOne = Magazine(name: 'PlayBoy');
  Magazine magazineTwo = Magazine(name: 'New York Times');

  bookOne.printable(bookOne.name);
  bookTwo.printable(bookTwo.name);
  magazineOne.printable(magazineOne.name);
  magazineTwo.printable(magazineTwo.name);

  bookOne.burn();
  magazineOne.burn();
}

mixin Burnable {
  void burn() {
    print('This object is burnable');
  }
}

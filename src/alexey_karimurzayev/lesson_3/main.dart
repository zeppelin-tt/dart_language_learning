// Куриная фабрика
// Написать Фабрику(Factory) по производству кур(Hen)
// 1.1. Создать класс Hen
// 1.1.1. Сделать его абстрактным
// 1.1.2. Добавить в класс абстрактный метод  int getCountOfEggsPerMonth()
// 1.1.3. Добавить в класс метод геттер String description, который возвращает строку "Я курица."
// 1.2. Создать класс RussianHen, который наследуется от Hen
// 1.3. Создать класс GermanHen, который наследуется от Hen
// 1.4. Создать класс MoldovanHen, который наследуется от Hen
// 1.5. Создать класс BelarusianHen, который наследуется от Hen
// 1.6. В каждом из четырех последних классов написать свою реализацию метода getCountOfEggsPerMonth.
// Методы должны возвращать количество яиц в месяц от данного типа куриц.
// 1.7. В каждом из четырех последних классов написать свою реализацию метода getDescription.
// Методы должны возвращать строку вида:
// <getDescription() родительского класса>  + <" Моя страна - SSSSS. Я несу N яиц в месяц.">
// где SSSSS - название страны
// где N - количество яиц в месяц
// 1.8. В классе HenFactory реализовать меетод getHen, который возвращает соответствующую стране породу кур
// 1.9. Все созданные вами классы должны быть в отдельных файлах
//
// 2.1 Создать интерфейс Printable, содержащий метод void print().
// 2.2 Создать класс Book с полем name, реализующий интерфейс Printable. (писать в консоль имя книги)
// 2.3 Создать класс Magazine с полем name, реализующий интерфейс Printable. (писать в консоль имя журнала)
// 2.4 Создать по 2 экземпляра книг и журналов.
//
// 3.1 Создать миксин Burnable с методом void burn() и реализацией (писать в консоль что предмет горит)
// 3.2 Добавить этот миксин к классам Book и Magazine из второго задания

import './classes/belarusian_hen.dart';
import './classes/german_hen.dart';
import 'classes/get_hen.dart';

void main() {
  final belarusianHen = BelarusianHen('Belarusian', eggs: 30);
  print(belarusianHen.getDescription());
  final germanHen = GermanHen('Germany', eggs: 27);
  print(germanHen.getDescription());
  print(germanHen.getCountOfEggsPerMonth());
  final henFactory = HenFactory().getHen('Germany');
  print(henFactory); // разобратся с выводом в консоль
}

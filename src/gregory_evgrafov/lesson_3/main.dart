import 'hen_factory.dart';

// 2.1 Создать интерфейс Printable, содержащий метод void print().
abstract class Printable {
  void printname();
  //если переназывать встреонную функцию, то там что-то странное с аргментами начинается
// т.к. оверрайдить можно при сохранении такого же количества аргументов(новые не добавить)
}

// 2.2 Создать класс Book с полем name, реализующий интерфейс Printable. (писать в консоль имя книги)
class Book  with Burnable implements Printable {
  String name;

  Book({required this.name});

  @override
  void printname() {
    print(name);
  }
}

// 2.3 Создать класс Magazine с полем name, реализующий интерфейс Printable. (писать в консоль имя журнала)
// 2.4 Создать по 2 экземпляра книг и журналов.
class Magazine  with Burnable implements Printable {
  String name;

  Magazine({required this.name});

  @override
  void printname() {
    print(name);
  }
}
// 3.1 Создать миксин Burnable с методом void burn() и реализацией (писать в консоль что предмет горит)
// 3.2 Добавить этот миксин к классам Book и Magazine из второго задания
mixin Burnable{
  void burn(){
  print('🔥🔥🔥🔥🔥');
  }
}

void main() {
  final jackie = HenFactory();
  final hen1 = jackie.getHen('Россия');
  print(hen1?.getDescription() ?? 'Такой курицы нет');

  final book1 = Book(name: 'Буратино');
  book1.printname();
  book1.burn();
  final book2 = Book(name: 'Война и Мир');
  book2.printname();
  book2.burn();

  final mag1 = Magazine(name: 'Maxim');
  mag1.printname();
  mag1.burn();
  final mag2 = Magazine(name: 'Новое литературное обозрение');
  mag2.printname();
  mag2.burn();
}

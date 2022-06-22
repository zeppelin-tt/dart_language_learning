// 2.1 Создать интерфейс Printable, содержащий метод void print().
// 2.2 Создать класс Book с полем name, реализующий интерфейс Printable. (писать в консоль имя книги)
// 2.3 Создать класс Magazine с полем name, реализующий интерфейс Printable. (писать в консоль имя журнала)
// 2.4 Создать по 2 экземпляра книг и журналов.
void main() {
  Magazine('Вокруг света').printName();
  Magazine.noName()
    ..name = 'Хакер'
    ..printName();
  Book(name: 'Империя Ангелов').printName();
  final noNameBock = Book.noName();
  noNameBock.printName();
}

abstract class Printable {
  void printName();
}

class Book with Burnable implements Printable {
  final String name;

  Book({
    required this.name,
  });

  Book.noName() : name = '';

  @override
  void printName() {
    if (name.isEmpty) {
      print('книга без имени');
      return;
    }
    print(name);
  }
}

class Magazine with Burnable implements Printable {
  String? name;

  Magazine.noName();

  Magazine(this.name);

  @override
  void printName() => print(name);
}

// 3.1 Создать миксин Burnable с методом void burn() и реализацией (писать в консоль что предмет горит)
// 3.2 Добавить этот миксин к классам Book и Magazine из второго задания
mixin Burnable {
  void burn() {
    print('горит');
  }
}

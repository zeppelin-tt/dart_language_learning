// ignore_for_file: prefer_mixin
//2.1 Создать интерфейс Printable, содержащий метод void print().

class Printable {
  void printOut() {
    print('Я книга');
  }
}
//2.2 Создать класс Book с полем name, реализующий интерфейс Printable. (писать в консоль имя книги)

class Book with Burnable implements Printable {
  String name = '';

  @override
  void printOut() {
    print(name);
  }
}
//2.3 Создать класс Magazine с полем name, реализующий интерфейс Printable. (писать в консоль имя журнала)

class Magazine with Burnable implements Printable {
  String name = '';

  @override
  void printOut() {
    print(name);
  }
}

//3.1 Создать миксин Burnable с методом void burn() и реализацией (писать в консоль что предмет горит)
//3.2 Добавить этот миксин к классам Book и Magazine из второго задания

class Burnable {
  void burn() {
    print('Горит!');
  }
}